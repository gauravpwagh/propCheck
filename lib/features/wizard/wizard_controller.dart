import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app/providers.dart';
import '../../domain/engine/engine.dart';
import '../../domain/models/saved_property.dart';
import 'wizard_state.dart';

part 'wizard_controller.g.dart';

@riverpod
class WizardController extends _$WizardController {
  @override
  WizardState build() {
    final p = ref.watch(activeProfileProvider).requireValue;
    return WizardState(
      profile: p,
      draft: WizardDraft.initial(p, currentYear: DateTime.now().year),
    );
  }

  RateProfile get _profile => state.profile;

  /// Opens the wizard on a saved property, calculated with [profile].
  void loadSaved(
    SavedProperty saved,
    RateProfile profile, {
    WizardStep step = WizardStep.mode,
  }) {
    state = WizardState(
      profile: profile,
      step: step,
      draft: WizardDraft(
        propertyId: saved.id,
        name: saved.name,
        profileId: saved.profileId,
        mode: saved.mode,
        budget: saved.budget,
        input: saved.input,
        areaInSqm: saved.areaInSqm,
      ),
    );
  }

  /// Opens the wizard on an unsaved draft, optionally at one screen.
  void load(WizardDraft draft, {WizardStep step = WizardStep.mode}) {
    state = state.copyWith(draft: draft, step: step);
  }

  void updateDraft(WizardDraft Function(WizardDraft d) f) {
    state = state.copyWith(draft: f(state.draft));
  }

  void updateInput(PropertyInput Function(PropertyInput i) f) {
    updateDraft((d) => d.copyWith(input: f(d.input)));
  }

  void updateFinance(Finance Function(Finance f) f) {
    updateInput((i) => i.copyWith(finance: f(i.finance ?? const Finance())));
  }

  /// Changing type moves carpet to the new type's default if the user kept
  /// the old default; interiors follow the type unless overridden.
  void setType(String type) {
    final p = _profile;
    updateInput((i) {
      final keptDefault = i.carpetSqft == p.defaultCarpetFor(i.type);
      return i.copyWith(
        type: type,
        carpetSqft: keptDefault ? p.defaultCarpetFor(type) : i.carpetSqft,
      );
    });
  }

  void setStatus(PropertyStatus status) {
    updateInput((i) => i.copyWith(status: status));
  }

  void next() {
    final s = state.steps;
    final i = state.index;
    if (i < s.length - 1) state = state.copyWith(step: s[i + 1]);
  }

  void back() {
    final s = state.steps;
    final i = state.index;
    if (i > 0) state = state.copyWith(step: s[i - 1]);
  }

  /// Skip keeps defaults; skipping financing means no loan.
  void skip() {
    if (state.step == WizardStep.financing) {
      updateFinance((f) => f.copyWith(usingLoan: false));
    }
    next();
  }

  void goTo(WizardStep step) {
    if (state.steps.contains(step)) state = state.copyWith(step: step);
  }

  /// Saves inputs (insert or update) and refreshes the result cache.
  /// Returns the property id.
  Future<int> save({required String defaultName}) async {
    final d = state.draft;
    final outcome = ref.read(wizardOutcomeProvider);
    final repo = ref.read(propertyRepositoryProvider);
    final now = DateTime.now();
    final existing = d.propertyId == null
        ? null
        : await repo.load(d.propertyId!);
    final id = await repo.save(
      SavedProperty(
        id: d.propertyId,
        name: d.name.isEmpty ? defaultName : d.name,
        mode: d.mode,
        budget: d.budget,
        profileId: _profile.id,
        rateVersion: _profile.version,
        input: d.input,
        areaInSqm: d.areaInSqm,
        createdAt: existing?.createdAt ?? now,
        updatedAt: now,
        isArchived: existing?.isArchived ?? false,
      ),
    );
    if (outcome != null) {
      await repo.writeCache(id, _profile.version, outcome);
    }
    if (ref.mounted) {
      updateDraft((d) => d.copyWith(propertyId: id));
    }
    return id;
  }
}

/// Live result for the current draft, or null while inputs are incomplete.
@riverpod
EstimateOutcome? wizardOutcome(Ref ref) {
  final s = ref.watch(wizardControllerProvider);
  return computeOutcome(
    s.draft.input,
    s.profile,
    mode: s.draft.mode,
    budget: s.draft.budget,
  );
}
