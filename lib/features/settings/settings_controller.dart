import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app/providers.dart';
import '../../data/backup/backup_service.dart';
import '../../data/import/rate_snapshot.dart';
import '../../data/import/risk_schema.dart';
import '../../data/repositories/guidance_repository.dart';
import '../../domain/engine/engine.dart';
import '../guidance/guidance_providers.dart';
import '../property/property_providers.dart';

part 'settings_controller.g.dart';

/// Stored risk data metadata for the settings screen.
@riverpod
Future<GuidanceDocument> riskDocument(Ref ref) async {
  ref.watch(riskDataProvider);
  await ref.watch(seededProvider.future);
  return ref.watch(guidanceRepositoryProvider).load(GuidanceKind.risk);
}

/// Outcome of a risk-data import attempt.
sealed class RiskImportResult {
  const RiskImportResult();
}

class RiskImportInvalidJson extends RiskImportResult {
  const RiskImportInvalidJson(this.error);

  final String error;
}

class RiskImportInvalid extends RiskImportResult {
  const RiskImportInvalid(this.problems);

  final List<SchemaProblem> problems;
}

class RiskImportDone extends RiskImportResult {
  const RiskImportDone({required this.asOf, this.snapshot});

  final String asOf;

  /// Rate changes the file suggests; offered, never applied automatically.
  final SnapshotProposal? snapshot;
}

@riverpod
class SettingsController extends _$SettingsController {
  @override
  void build() {}

  void _ratesChanged() {
    ref
      ..invalidate(activeProfileProvider)
      ..invalidate(propertyViewProvider);
  }

  Future<RateProfile> resetRates() async {
    final active = await ref.read(activeProfileProvider.future);
    final p = await ref
        .read(rateProfileRepositoryProvider)
        .resetToBundled(active.id);
    _ratesChanged();
    return p;
  }

  Future<void> restoreRisk() async {
    await ref
        .read(guidanceRepositoryProvider)
        .restoreBundled(GuidanceKind.risk);
    ref.invalidate(riskDataProvider);
  }

  /// Validates and stores risk data (DB copy only).
  Future<RiskImportResult> importRisk(String text) async {
    final Object? json;
    try {
      json = jsonDecode(text);
    } on FormatException catch (e) {
      return RiskImportInvalidJson(e.message);
    }
    final problems = validateRiskData(json);
    if (problems.isNotEmpty) return RiskImportInvalid(problems);
    final map = json! as Map<String, dynamic>;
    await ref.read(guidanceRepositoryProvider).replace(GuidanceKind.risk, map);
    ref.invalidate(riskDataProvider);

    SnapshotProposal? proposal;
    final snap = map['rate_snapshot'];
    if (snap is Map<String, dynamic>) {
      final active = await ref.read(activeProfileProvider.future);
      final pr = proposeFromSnapshot(active, snap);
      if (pr.hasChanges) proposal = pr;
    }
    return RiskImportDone(asOf: map['as_of'] as String, snapshot: proposal);
  }

  /// Saves the snapshot's rates as a new profile version (user confirmed).
  Future<RateProfile> applySnapshot(SnapshotProposal proposal) async {
    final p = await ref
        .read(rateProfileRepositoryProvider)
        .saveEdited(proposal.updated);
    _ratesChanged();
    return p;
  }

  /// Writes a backup file to the temp folder and returns its path.
  Future<String> exportBackup() async {
    final text = await BackupService(ref.read(appDatabaseProvider)).export();
    final dir = await getTemporaryDirectory();
    final now = DateTime.now();
    final stamp =
        '${now.year}${now.month.toString().padLeft(2, '0')}'
        '${now.day.toString().padLeft(2, '0')}';
    final file = File(p.join(dir.path, 'propcheck-backup-$stamp.json'));
    await file.writeAsString(text);
    return file.path;
  }

  /// Imports a backup; returns how many properties were added.
  Future<int> importBackup(Uint8List bytes) async {
    final ids = await BackupService(
      ref.read(appDatabaseProvider),
    ).import(utf8.decode(bytes, allowMalformed: true));
    final repo = ref.read(propertyRepositoryProvider);
    for (final id in ids) {
      final view = await ref.read(propertyViewProvider(id).future);
      final o = view?.outcome;
      if (view != null && o != null) {
        await repo.writeCache(id, view.profile.version, o);
      }
    }
    return ids.length;
  }
}
