import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app/providers.dart';
import '../../data/repositories/checklist_repository.dart';
import '../../data/repositories/property_repository.dart';
import '../../domain/engine/engine.dart';
import '../../domain/models/saved_property.dart';

part 'property_providers.g.dart';

/// A saved property with the profile it was calculated with and its result.
class PropertyView {
  const PropertyView({
    required this.property,
    required this.profile,
    required this.active,
    required this.outcome,
  });

  final SavedProperty property;
  final RateProfile profile;
  final RateProfile active;
  final EstimateOutcome? outcome;

  int get id => property.id!;

  bool get outdated =>
      profile.id == active.id && profile.version < active.version;
}

/// Recomputes a saved property from its inputs and stored rate version.
/// Returns null if the property was deleted.
@riverpod
Future<PropertyView?> propertyView(Ref ref, int id) async {
  await ref.watch(seededProvider.future);
  final saved = await ref.watch(propertyRepositoryProvider).load(id);
  if (saved == null) return null;
  final profile = await ref.watch(
    profileVersionProvider(saved.profileId, saved.rateVersion).future,
  );
  final active = await ref.watch(activeProfileProvider.future);
  return PropertyView(
    property: saved,
    profile: profile,
    active: active,
    outcome: computeOutcome(
      saved.input,
      profile,
      mode: saved.mode,
      budget: saved.budget,
    ),
  );
}

@riverpod
Stream<List<PropertyListItem>> propertyList(Ref ref) async* {
  await ref.watch(seededProvider.future);
  yield* ref.watch(propertyRepositoryProvider).watchList();
}

@riverpod
Future<double> checklistProgress(Ref ref, int propertyId) async {
  ref.watch(checklistItemsProvider(propertyId));
  return ref.watch(checklistRepositoryProvider).progress(propertyId);
}

@riverpod
Stream<List<ChecklistEntry>> checklistItems(Ref ref, int propertyId) =>
    ref.watch(checklistRepositoryProvider).watch(propertyId);

/// Actions on one saved property (detail screen controller).
@riverpod
class PropertyDetailController extends _$PropertyDetailController {
  @override
  void build(int id) {}

  PropertyRepository get _repo => ref.read(propertyRepositoryProvider);

  void _refresh() {
    ref.invalidate(propertyViewProvider(id));
  }

  /// Recalculates with the latest version of the property's profile.
  Future<void> recalculate() async {
    final saved = await _repo.load(id);
    if (saved == null) return;
    final active = await ref.read(activeProfileProvider.future);
    await _repo.save(
      saved.copyWith(
        profileId: active.id,
        rateVersion: active.version,
        updatedAt: DateTime.now(),
      ),
    );
    final outcome = computeOutcome(
      saved.input,
      active,
      mode: saved.mode,
      budget: saved.budget,
    );
    if (outcome != null) await _repo.writeCache(id, active.version, outcome);
    _refresh();
  }

  Future<int> duplicate(String suffix) async {
    final newId = await _repo.duplicate(id, nameSuffix: suffix);
    final view = await ref.read(propertyViewProvider(newId).future);
    final o = view?.outcome;
    if (view != null && o != null) {
      await _repo.writeCache(newId, view.profile.version, o);
    }
    return newId;
  }

  Future<void> delete() async {
    await _repo.delete(id);
    _refresh();
  }

  Future<void> setArchived({required bool archived}) async {
    await _repo.setArchived(id, archived: archived);
    _refresh();
  }

  /// Call after the wizard saved edits to this property.
  void edited() => _refresh();
}
