import 'dart:convert';

import 'package:drift/drift.dart';

import '../../domain/engine/engine.dart';
import '../../domain/models/saved_property.dart';
import '../db/app_database.dart';
import '../repositories/checklist_repository.dart';
import '../repositories/property_repository.dart';

/// Identifies PropCheck backup files.
const backupFormat = 'propcheck_backup';
const backupFormatVersion = 1;

enum BackupProblem { invalidJson, notABackup, newerVersion, damaged }

/// Why an import failed; the UI maps [problem] to a localized message.
class BackupException implements Exception {
  const BackupException(this.problem, [this.detail]);

  final BackupProblem problem;
  final String? detail;

  @override
  String toString() => '$problem${detail == null ? '' : ': $detail'}';
}

/// Export and import of all saved properties as one JSON document. Includes
/// the rate profile versions they were calculated with, so a restore on a
/// fresh install recomputes the same numbers.
class BackupService {
  BackupService(this._db);

  final AppDatabase _db;

  PropertyRepository get _props => PropertyRepository(_db);
  ChecklistRepository get _checklist => ChecklistRepository(_db);

  Future<String> export({DateTime? now}) async {
    final properties = await _props.loadAll();
    final usedVersions = {
      for (final p in properties) (p.profileId, p.rateVersion),
    };
    final profileRows = await _db.select(_db.rateProfiles).get();
    return const JsonEncoder.withIndent('  ').convert({
      'format': backupFormat,
      'format_version': backupFormatVersion,
      'exported_at': (now ?? DateTime.now()).toIso8601String(),
      'rate_profiles': [
        for (final r in profileRows)
          if (usedVersions.contains((r.id, r.version)))
            jsonDecode(r.json) as Map<String, dynamic>,
      ],
      'properties': [
        for (final p in properties)
          {
            ...p.toJson(),
            'checklist': [
              for (final c in await _checklist.load(p.id!))
                {
                  'item_id': c.itemId,
                  'source': c.source,
                  'done': c.done,
                  'note': ?c.note,
                  'done_at': ?c.doneAt?.toIso8601String(),
                },
            ],
          },
      ],
    });
  }

  /// Adds every property in [text] as a new property (existing ones are not
  /// touched). Returns the new ids.
  Future<List<int>> import(String text) async {
    final Object? decoded;
    try {
      decoded = jsonDecode(text);
    } on FormatException catch (e) {
      throw BackupException(BackupProblem.invalidJson, e.message);
    }
    if (decoded is! Map<String, dynamic> || decoded['format'] != backupFormat) {
      throw const BackupException(BackupProblem.notABackup);
    }
    if ((decoded['format_version'] as int? ?? 0) > backupFormatVersion) {
      throw const BackupException(BackupProblem.newerVersion);
    }

    final parsed = <(SavedProperty, List<Map<String, dynamic>>)>[];
    final profiles = <RateProfile>[];
    try {
      for (final p in (decoded['rate_profiles'] as List? ?? const [])) {
        profiles.add(RateProfile.fromJson(p as Map<String, dynamic>));
      }
      for (final p in (decoded['properties'] as List? ?? const [])) {
        final m = p as Map<String, dynamic>;
        parsed.add((
          SavedProperty.fromJson(m),
          (m['checklist'] as List? ?? const []).cast<Map<String, dynamic>>(),
        ));
      }
    } on Object catch (e) {
      throw BackupException(BackupProblem.damaged, '$e');
    }

    return _db.transaction(() async {
      for (final p in profiles) {
        await _db
            .into(_db.rateProfiles)
            .insert(
              RateProfilesCompanion.insert(
                id: p.id,
                version: p.version,
                asOf: p.asOf,
                json: jsonEncode(p.toJson()),
                isBundled: p.isBundled,
                createdAt: DateTime.now(),
              ),
              mode: InsertMode.insertOrIgnore,
            );
      }
      final ids = <int>[];
      for (final (saved, checklist) in parsed) {
        final id = await _props.save(saved.copyWith(id: null));
        ids.add(id);
        for (final c in checklist) {
          await _db
              .into(_db.checklistItems)
              .insert(
                ChecklistItemsCompanion.insert(
                  propertyId: id,
                  itemId: c['item_id'] as String,
                  source: c['source'] as String,
                  done: Value(c['done'] as bool? ?? false),
                  note: Value(c['note'] as String?),
                  doneAt: Value(
                    DateTime.tryParse(c['done_at'] as String? ?? ''),
                  ),
                ),
                mode: InsertMode.insertOrIgnore,
              );
        }
      }
      return ids;
    });
  }
}
