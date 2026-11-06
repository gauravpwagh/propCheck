import 'dart:convert';

import '../bundled_assets.dart';
import '../db/app_database.dart';
import 'rate_profile_repository.dart';

/// Kinds of guidance content stored in the `risk_data` table.
abstract final class GuidanceKind {
  static const risk = 'risk';
  static const steps = 'steps';
}

/// Stored JSON plus where it came from.
class GuidanceDocument {
  const GuidanceDocument({
    required this.json,
    required this.version,
    required this.asOf,
    required this.isBundled,
    required this.importedAt,
  });

  final Map<String, dynamic> json;
  final String version;
  final String asOf;
  final bool isBundled;
  final DateTime importedAt;
}

class GuidanceRepository {
  GuidanceRepository(this._db, this._assets);

  final AppDatabase _db;
  final AssetSource _assets;

  static const _assetFor = {
    GuidanceKind.risk: BundledAssets.riskData,
    GuidanceKind.steps: BundledAssets.steps,
  };

  Future<void> seedIfEmpty() async {
    for (final kind in _assetFor.keys) {
      final existing = await (_db.select(
        _db.riskData,
      )..where((t) => t.kind.equals(kind))).getSingleOrNull();
      if (existing == null) await restoreBundled(kind);
    }
  }

  Future<GuidanceDocument> load(String kind) async {
    final r = await (_db.select(
      _db.riskData,
    )..where((t) => t.kind.equals(kind))).getSingle();
    return GuidanceDocument(
      json: jsonDecode(r.json) as Map<String, dynamic>,
      version: r.version,
      asOf: r.asOf,
      isBundled: r.isBundled,
      importedAt: r.importedAt,
    );
  }

  /// Replaces the stored copy (never the bundled asset).
  Future<void> replace(
    String kind,
    Map<String, dynamic> json, {
    bool isBundled = false,
  }) => _db
      .into(_db.riskData)
      .insertOnConflictUpdate(
        RiskDataCompanion.insert(
          kind: kind,
          version: '${json['schema_version'] ?? ''}',
          asOf: '${json['as_of'] ?? ''}',
          json: jsonEncode(json),
          isBundled: isBundled,
          importedAt: DateTime.now(),
        ),
      );

  Future<void> restoreBundled(String kind) async =>
      replace(kind, await _assets.load(_assetFor[kind]!), isBundled: true);
}
