import 'dart:convert';

import 'package:drift/drift.dart';

import '../../domain/engine/engine.dart';
import '../bundled_assets.dart';
import '../db/app_database.dart';

/// Loads a bundled asset as JSON. Replaced in tests to read from disk.
class AssetSource {
  const AssetSource();

  Future<Map<String, dynamic>> load(String path) => BundledAssets.load(path);
}

class RateProfileRepository {
  RateProfileRepository(this._db, this._assets);

  final AppDatabase _db;
  final AssetSource _assets;

  Future<List<RateProfile>> bundled() async {
    final data = await _assets.load(BundledAssets.rateProfiles);
    return [
      for (final p in (data['profiles'] as List).cast<Map<String, dynamic>>())
        RateProfile.fromJson(p),
    ];
  }

  /// Inserts bundled profiles if the table is empty.
  Future<void> seedIfEmpty() async {
    final count = await _db.rateProfiles.count().getSingle();
    if (count > 0) return;
    for (final p in await bundled()) {
      await _insert(p.copyWith(isBundled: true));
    }
  }

  Future<void> _insert(RateProfile p) => _db
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
      );

  RateProfile _decode(RateProfileRow r) =>
      RateProfile.fromJson(jsonDecode(r.json) as Map<String, dynamic>);

  /// Ids of all profiles, in insertion order.
  Future<List<String>> ids() async {
    final rows = await (_db.selectOnly(
      _db.rateProfiles,
      distinct: true,
    )..addColumns([_db.rateProfiles.id])).get();
    return [for (final r in rows) r.read(_db.rateProfiles.id)!];
  }

  /// Latest version of a profile.
  Future<RateProfile> active(String id) async {
    final row =
        await (_db.select(_db.rateProfiles)
              ..where((t) => t.id.equals(id))
              ..orderBy([(t) => OrderingTerm.desc(t.version)])
              ..limit(1))
            .getSingle();
    return _decode(row);
  }

  /// A specific stored version, used to recompute saved properties.
  Future<RateProfile?> version(String id, int version) async {
    final row =
        await (_db.select(_db.rateProfiles)
              ..where((t) => t.id.equals(id) & t.version.equals(version)))
            .getSingleOrNull();
    return row == null ? null : _decode(row);
  }

  /// Saves an edited profile as a new version and returns it.
  Future<RateProfile> saveEdited(RateProfile edited) async {
    final latest = await active(edited.id);
    final next = edited.copyWith(version: latest.version + 1, isBundled: false);
    await _insert(next);
    return next;
  }

  /// Saves the bundled values as a new version (old versions are kept).
  Future<RateProfile> resetToBundled(String id) async {
    final original = (await bundled()).firstWhere((p) => p.id == id);
    final latest = await active(id);
    final next = original.copyWith(
      version: latest.version + 1,
      isBundled: true,
    );
    await _insert(next);
    return next;
  }
}
