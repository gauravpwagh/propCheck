import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/db/app_database.dart';
import '../data/repositories/checklist_repository.dart';
import '../data/repositories/guidance_repository.dart';
import '../data/repositories/property_repository.dart';
import '../data/repositories/rate_profile_repository.dart';
import '../domain/engine/engine.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final db = AppDatabase.onDevice();
  ref.onDispose(db.close);
  return db;
}

@Riverpod(keepAlive: true)
AssetSource assetSource(Ref ref) => const AssetSource();

@Riverpod(keepAlive: true)
RateProfileRepository rateProfileRepository(Ref ref) => RateProfileRepository(
  ref.watch(appDatabaseProvider),
  ref.watch(assetSourceProvider),
);

@Riverpod(keepAlive: true)
PropertyRepository propertyRepository(Ref ref) =>
    PropertyRepository(ref.watch(appDatabaseProvider));

@Riverpod(keepAlive: true)
GuidanceRepository guidanceRepository(Ref ref) => GuidanceRepository(
  ref.watch(appDatabaseProvider),
  ref.watch(assetSourceProvider),
);

/// Seeds bundled profile, steps and risk data on first run.
@Riverpod(keepAlive: true)
Future<void> seeded(Ref ref) async {
  await ref.watch(rateProfileRepositoryProvider).seedIfEmpty();
  await ref.watch(guidanceRepositoryProvider).seedIfEmpty();
}

/// The latest version of the profile new estimates use. Invalidate after
/// editing rates.
@Riverpod(keepAlive: true)
Future<RateProfile> activeProfile(Ref ref) async {
  await ref.watch(seededProvider.future);
  final repo = ref.watch(rateProfileRepositoryProvider);
  final ids = await repo.ids();
  return repo.active(ids.first);
}

/// A stored profile version; falls back to the latest if it is missing.
@riverpod
Future<RateProfile> profileVersion(Ref ref, String id, int version) async {
  await ref.watch(seededProvider.future);
  final repo = ref.watch(rateProfileRepositoryProvider);
  return await repo.version(id, version) ?? await repo.active(id);
}

@Riverpod(keepAlive: true)
ChecklistRepository checklistRepository(Ref ref) =>
    ChecklistRepository(ref.watch(appDatabaseProvider));
