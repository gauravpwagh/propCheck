import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app/providers.dart';
import '../../domain/engine/engine.dart';
import 'wizard_state.dart';

part 'wizard_controller.g.dart';

@riverpod
class WizardController extends _$WizardController {
  RateProfile get _profile => ref.read(activeProfileProvider).requireValue;

  @override
  WizardState build() {
    final p = ref.watch(activeProfileProvider).requireValue;
    return WizardState(
      draft: WizardDraft.initial(p, currentYear: DateTime.now().year),
    );
  }

  /// Opens the wizard on an existing draft, optionally at one screen.
  void load(WizardDraft draft, {WizardStep step = WizardStep.mode}) {
    state = WizardState(draft: draft, step: step);
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
}

/// Live result for the current draft, or null while inputs are incomplete.
@riverpod
EstimateOutcome? wizardOutcome(Ref ref) {
  final draft = ref.watch(wizardControllerProvider.select((s) => s.draft));
  final p = ref.watch(activeProfileProvider).requireValue;
  return computeOutcome(draft.input, p, mode: draft.mode, budget: draft.budget);
}
