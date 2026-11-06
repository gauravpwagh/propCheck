import 'package:drift/drift.dart' hide isNull, isNotNull;
import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/data/db/app_database.dart';
import 'package:prop_check/data/repositories/checklist_repository.dart';
import 'package:prop_check/data/repositories/guidance_repository.dart';
import 'package:prop_check/data/repositories/property_repository.dart';
import 'package:prop_check/data/repositories/rate_profile_repository.dart';
import 'package:prop_check/domain/engine/engine.dart';
import 'package:prop_check/domain/models/saved_property.dart';

import '../support/fixtures.dart';

void main() {
  late AppDatabase db;
  late PropertyRepository props;
  late RateProfileRepository profiles;
  late GuidanceRepository guidance;
  late ChecklistRepository checklist;

  setUp(() {
    db = AppDatabase.memory();
    props = PropertyRepository(db);
    profiles = RateProfileRepository(db, const FileAssetSource());
    guidance = GuidanceRepository(db, const FileAssetSource());
    checklist = ChecklistRepository(db);
  });
  tearDown(() => db.close());

  final golden = readJson('test_fixtures/golden_cases.json');
  final cases = (golden['cases'] as List).cast<Map<String, dynamic>>();

  PropertyInput inputOf(int i) =>
      PropertyInput.fromJson(cases[i]['input'] as Map<String, dynamic>);

  SavedProperty saved(PropertyInput input, {String name = 'Test'}) {
    final now = DateTime(2026, 11, 6);
    return SavedProperty(
      name: name,
      mode: EstimateMode.priceToTotal,
      profileId: 'mumbai_bmc',
      rateVersion: 1,
      input: input,
      createdAt: now,
      updatedAt: now,
    );
  }

  group('seeding', () {
    test('seeds profile and guidance once', () async {
      await profiles.seedIfEmpty();
      await profiles.seedIfEmpty();
      await guidance.seedIfEmpty();
      await guidance.seedIfEmpty();
      expect(await profiles.ids(), ['mumbai_bmc']);
      final p = await profiles.active('mumbai_bmc');
      expect(p.version, 1);
      expect(p.isBundled, isTrue);
      expect((await guidance.load(GuidanceKind.risk)).asOf, '2026-11-06');
      final steps = await guidance.load(GuidanceKind.steps);
      expect(steps.json['steps'], isNotEmpty);
    });
  });

  group('properties', () {
    for (var i = 0; i < cases.length; i++) {
      test('round-trips ${cases[i]['name']}', () async {
        await profiles.seedIfEmpty();
        final input = inputOf(i);
        final id = await props.save(saved(input));
        final back = await props.load(id);
        expect(back!.input, input);
        if (cases[i]['mode'] == 'price_to_total') {
          final p = await profiles.version('mumbai_bmc', back.rateVersion);
          final expected = cases[i]['expected'] as Map<String, dynamic>;
          expect(estimate(back.input, p!).total, expected['total']);
        }
      });
    }

    test('update replaces extras and keeps the id', () async {
      final id = await props.save(saved(inputOf(1)));
      final loaded = (await props.load(id))!;
      await props.save(
        loaded.copyWith(
          name: 'Renamed',
          input: loaded.input.copyWith(
            extras: [const Extra(kind: 'floor rise', amount: 100000)],
          ),
        ),
      );
      final again = (await props.load(id))!;
      expect(again.name, 'Renamed');
      expect(again.input.extras, [
        const Extra(kind: 'floor rise', amount: 100000),
      ]);
      expect(await db.propertyExtras.count().getSingle(), 1);
    });

    test('duplicate copies inputs, delete cascades', () async {
      final input = inputOf(0);
      final id = await props.save(saved(input, name: 'Flat A'));
      final copy = await props.duplicate(id, nameSuffix: ' (copy)');
      expect(copy, isNot(id));
      final c = (await props.load(copy))!;
      expect(c.name, 'Flat A (copy)');
      expect(c.input, input);

      await props.delete(id);
      expect(await props.load(id), isNull);
      expect(await db.buyerFinance.count().getSingle(), 1);
      expect(await db.resaleDetails.count().getSingle(), 1);
    });

    test('list carries cache and archive flag', () async {
      await profiles.seedIfEmpty();
      final p = await profiles.active('mumbai_bmc');
      final input = inputOf(0);
      final id = await props.save(saved(input));
      final outcome = computeOutcome(
        input,
        p,
        mode: EstimateMode.priceToTotal,
      )!;
      await props.writeCache(id, p.version, outcome);
      await props.setArchived(id, archived: true);
      final list = await props.watchList().first;
      expect(list.single.cache!.total, 11319750);
      expect(list.single.cache!.criticalFlags, 1);
      expect(list.single.property.isArchived, isTrue);
    });
  });

  group('rate profiles', () {
    test('edits bump the version and keep old versions', () async {
      await profiles.seedIfEmpty();
      final v1 = await profiles.active('mumbai_bmc');
      final v2 = await profiles.saveEdited(
        v1.copyWith(registrationCapInr: 35000),
      );
      expect(v2.version, 2);
      expect(v2.isBundled, isFalse);
      expect((await profiles.active('mumbai_bmc')).registrationCapInr, 35000);
      expect(
        (await profiles.version('mumbai_bmc', 1))!.registrationCapInr,
        30000,
      );
      final v3 = await profiles.resetToBundled('mumbai_bmc');
      expect(v3.version, 3);
      expect(v3.registrationCapInr, 30000);
      expect(v3.isBundled, isTrue);
    });
  });

  group('checklist', () {
    test('sync adds, removes and keeps progress', () async {
      final id = await props.save(saved(inputOf(0)));
      await checklist.sync(id, [
        (itemId: 'a', source: ChecklistSource.step),
        (itemId: 'b', source: ChecklistSource.step),
      ]);
      final rows = await checklist.load(id);
      await checklist.setDone(
        rows.firstWhere((r) => r.itemId == 'a').id,
        done: true,
      );
      expect(await checklist.progress(id), 0.5);

      await checklist.sync(id, [
        (itemId: 'a', source: ChecklistSource.step),
        (itemId: 'c', source: ChecklistSource.safety),
      ]);
      final after = await checklist.load(id);
      expect(after.map((r) => r.itemId).toSet(), {'a', 'c'});
      expect(after.firstWhere((r) => r.itemId == 'a').done, isTrue);
      expect(await checklist.progress(id), 0.5);
    });
  });
}
