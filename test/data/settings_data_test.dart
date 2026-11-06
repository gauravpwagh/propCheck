import 'dart:convert';

import 'package:drift/drift.dart' show driftRuntimeOptions;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/app/providers.dart';
import 'package:prop_check/data/backup/backup_service.dart';
import 'package:prop_check/data/db/app_database.dart';
import 'package:prop_check/data/import/rate_snapshot.dart';
import 'package:prop_check/data/repositories/checklist_repository.dart';
import 'package:prop_check/data/repositories/property_repository.dart';
import 'package:prop_check/data/repositories/rate_profile_repository.dart';
import 'package:prop_check/domain/engine/engine.dart';
import 'package:prop_check/domain/models/saved_property.dart';
import 'package:prop_check/features/settings/profile_editor_controller.dart';
import 'package:prop_check/features/settings/profile_fields.dart';
import 'package:prop_check/features/settings/settings_controller.dart';

import '../support/fixtures.dart';

void main() {
  driftRuntimeOptions.dontWarnAboutMultipleDatabases = true;
  final profile = bundledProfile();
  final risk = readJson('assets/data/mumbai_risk_data.json');
  final golden = readJson('test_fixtures/golden_cases.json');
  PropertyInput inputOf(int i) => PropertyInput.fromJson(
    ((golden['cases'] as List)[i] as Map<String, dynamic>)['input']
        as Map<String, dynamic>,
  );

  group('field validation', () {
    final tax = ProfileField(['registration_pct'], (l) => '', FieldKind.taxPct);
    final cap = ProfileField(
      ['loan', 'ltv_slabs', 2, 'max_value_inr'],
      (l) => '',
      FieldKind.inr,
      nullable: true,
    );
    test('percentages are limited to 0–20', () {
      expect(parseField(tax, '1.5').value, 1.5);
      expect(parseField(tax, '25').error, FieldError.pctRange20);
      expect(parseField(tax, '-1').error, FieldError.pctRange20);
      expect(parseField(tax, 'abc').error, FieldError.notANumber);
    });
    test('nullable caps accept empty', () {
      final r = parseField(cap, '');
      expect(r.error, isNull);
      expect(r.value, isNull);
    });
    test('paths read and write nested JSON', () {
      final json =
          jsonDecode(jsonEncode(profile.toJson())) as Map<String, dynamic>;
      expect(readPath(json, ['loan', 'ltv_slabs', 0, 'ltv_pct']), 90);
      writePath(json, ['loan', 'ltv_slabs', 0, 'ltv_pct'], 85);
      expect(RateProfile.fromJson(json).loan.ltvSlabs.first.ltvPct, 85);
    });
  });

  group('rate snapshot', () {
    final snap = risk['rate_snapshot'] as Map<String, dynamic>;
    test('bundled snapshot matches bundled rates', () {
      expect(proposeFromSnapshot(profile, snap).hasChanges, isFalse);
    });
    test('changed rates are listed and mapped', () {
      final changed = jsonDecode(jsonEncode(snap)) as Map<String, dynamic>;
      (changed['stamp_duty_pct'] as Map)['joint_male_female'] = 6.0;
      (changed['gst_pct'] as Map)['ready_with_oc'] = 1.0;
      final p = proposeFromSnapshot(profile, changed);
      expect(p.changes.map((c) => c.field), [
        'stamp_duty_pct.joint',
        'gst_pct.ready_possession',
      ]);
      expect(p.updated.stampDutyPct['joint'], 6.0);
      expect(p.updated.gstPct['ready_possession'], 1.0);
    });
  });

  group('backup', () {
    late AppDatabase from;
    late AppDatabase to;
    setUp(() {
      from = AppDatabase.memory();
      to = AppDatabase.memory();
    });
    tearDown(() async {
      await from.close();
      await to.close();
    });

    test('round-trips properties, rate versions and checklist', () async {
      final profiles = RateProfileRepository(from, const FileAssetSource());
      await profiles.seedIfEmpty();
      final v2 = await profiles.saveEdited(
        (await profiles.active('mumbai_bmc')).copyWith(legalFeesInr: 30000),
      );
      final repo = PropertyRepository(from);
      final now = DateTime(2026, 11, 6);
      final a = await repo.save(
        SavedProperty(
          name: 'A',
          mode: EstimateMode.priceToTotal,
          profileId: 'mumbai_bmc',
          rateVersion: 1,
          input: inputOf(0),
          createdAt: now,
          updatedAt: now,
        ),
      );
      await repo.save(
        SavedProperty(
          name: 'B',
          mode: EstimateMode.budgetToPrice,
          budget: 12000000,
          profileId: 'mumbai_bmc',
          rateVersion: v2.version,
          input: inputOf(7),
          createdAt: now,
          updatedAt: now,
        ),
      );
      final checklist = ChecklistRepository(from);
      await checklist.sync(a, [(itemId: 'rs_identity', source: 'step')]);
      final row = (await checklist.load(a)).single;
      await checklist.setDone(row.id, done: true);
      await checklist.setNote(row.id, 'Met at society office');

      final text = await BackupService(from).export();
      final ids = await BackupService(to).import(text);
      expect(ids, hasLength(2));

      final back = await PropertyRepository(to).loadAll();
      expect(back.map((p) => p.name), ['A', 'B']);
      expect(back[0].input, inputOf(0));
      expect(back[1].budget, 12000000);
      final toProfiles = RateProfileRepository(to, const FileAssetSource());
      expect((await toProfiles.version('mumbai_bmc', 2))!.legalFeesInr, 30000);
      final items = await ChecklistRepository(to).load(ids[0]);
      expect(items.single.done, isTrue);
      expect(items.single.note, 'Met at society office');
    });

    test('rejects files that are not backups', () async {
      final s = BackupService(to);
      await expectLater(
        s.import('{oops'),
        throwsA(
          isA<BackupException>().having(
            (e) => e.problem,
            'problem',
            BackupProblem.invalidJson,
          ),
        ),
      );
      await expectLater(
        s.import(jsonEncode(risk)),
        throwsA(
          isA<BackupException>().having(
            (e) => e.problem,
            'problem',
            BackupProblem.notABackup,
          ),
        ),
      );
    });
  });

  group('controllers', () {
    late AppDatabase db;
    late ProviderContainer c;
    setUp(() {
      db = AppDatabase.memory();
      c = ProviderContainer(
        overrides: [
          appDatabaseProvider.overrideWithValue(db),
          assetSourceProvider.overrideWithValue(const FileAssetSource()),
        ],
      );
    });
    tearDown(() async {
      c.dispose();
      await db.close();
    });

    test('editor saves a new version; invalid input blocks save', () async {
      await c.read(profileEditorControllerProvider.future);
      final ed = c.read(profileEditorControllerProvider.notifier);
      final reg = ProfileField(
        ['registration_pct'],
        (l) => '',
        FieldKind.taxPct,
      );
      ed.setField(reg, '30');
      expect(await ed.save(), isNull);
      ed.setField(reg, '1.5');
      final saved = await ed.save();
      expect(saved!.version, 2);
      expect((await c.read(activeProfileProvider.future)).registrationPct, 1.5);
    });

    test('risk import validates and only offers the snapshot', () async {
      final s = c.read(settingsControllerProvider.notifier);
      final bad = await s.importRisk('{"schema_version": "1.0"}');
      expect(bad, isA<RiskImportInvalid>());
      expect(await s.importRisk('not json'), isA<RiskImportInvalidJson>());

      final changed = jsonDecode(jsonEncode(risk)) as Map<String, dynamic>;
      changed['as_of'] = '2027-01-15';
      ((changed['rate_snapshot'] as Map)['stamp_duty_pct'] as Map)['male'] = 7;
      final ok = await s.importRisk(jsonEncode(changed));
      expect(ok, isA<RiskImportDone>());
      final done = ok as RiskImportDone;
      expect(done.snapshot!.changes.single.field, 'stamp_duty_pct.male');
      expect((await c.read(activeProfileProvider.future)).version, 1);

      final applied = await s.applySnapshot(done.snapshot!);
      expect(applied.version, 2);
      expect(applied.stampDutyPct['male'], 7);
    });
  });
}
