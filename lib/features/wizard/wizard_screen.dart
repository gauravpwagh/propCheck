import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../core/money.dart';
import '../../domain/engine/engine.dart';
import '../../l10n/gen/app_localizations.dart';
import '../result/result_view.dart';
import 'wizard_controller.dart';
import 'wizard_state.dart';
import 'wizard_steps.dart';

/// One question per screen with a live running total pinned at the bottom.
class WizardScreen extends ConsumerWidget {
  const WizardScreen({super.key, this.resultActions = const []});

  /// Extra buttons on the result step (e.g. Save).
  final List<Widget> resultActions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(activeProfileProvider);
    return profile.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(
        body: Center(
          child: Text(AppLocalizations.of(context).commonError('$e')),
        ),
      ),
      data: (_) => _WizardBody(resultActions: resultActions),
    );
  }
}

class _WizardBody extends ConsumerWidget {
  const _WizardBody({required this.resultActions});

  final List<Widget> resultActions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final state = ref.watch(wizardControllerProvider);
    final c = ref.read(wizardControllerProvider.notifier);
    final outcome = ref.watch(wizardOutcomeProvider);
    final profile = ref.watch(activeProfileProvider).requireValue;
    final steps = state.steps;
    final current = state.index + 1;

    return PopScope(
      canPop: state.isFirst,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) c.back();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            state.draft.propertyId == null ? l.wizardTitle : l.wizardEditTitle,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(24),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: current / steps.length,
                      semanticsLabel: l.wizardStepOf(current, steps.length),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(l.wizardStepOf(current, steps.length)),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: state.isResult
              ? (outcome == null
                    ? Center(child: Text(l.commonInvalidNumber))
                    : ResultView(
                        outcome: outcome,
                        input: state.draft.input,
                        profile: profile,
                        footer: [
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              OutlinedButton.icon(
                                onPressed: () => c.goTo(WizardStep.mode),
                                icon: const Icon(Icons.edit),
                                label: Text(l.resultEditInputs),
                              ),
                              ...resultActions,
                            ],
                          ),
                          const SizedBox(height: 16),
                        ],
                      ))
              : WizardStepView(key: ValueKey(state.step), step: state.step),
        ),
        bottomNavigationBar: state.isResult
            ? null
            : _BottomBar(state: state, outcome: outcome),
      ),
    );
  }
}

class _BottomBar extends ConsumerWidget {
  const _BottomBar({required this.state, required this.outcome});

  final WizardState state;
  final EstimateOutcome? outcome;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    final c = ref.read(wizardControllerProvider.notifier);
    final isBudget = state.draft.mode == EstimateMode.budgetToPrice;
    final o = outcome;
    final headline = o == null
        ? '-'
        : Money.full(isBudget ? o.quotedPrice : o.breakdown.total);
    final nextIndex = state.index + 1;
    final nextIsResult =
        nextIndex < state.steps.length &&
        state.steps[nextIndex] == WizardStep.result;
    final canContinue = !nextIsResult || o != null;

    return Material(
      elevation: 3,
      color: Theme.of(context).colorScheme.surfaceContainer,
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Semantics(
                liveRegion: true,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        isBudget
                            ? l.wizardRunningMaxPrice
                            : l.wizardRunningTotal,
                        style: t.labelLarge,
                      ),
                    ),
                    Text(headline, style: t.titleLarge),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  if (!state.isFirst)
                    TextButton(onPressed: c.back, child: Text(l.commonBack)),
                  const Spacer(),
                  if (state.step.skippable)
                    TextButton(onPressed: c.skip, child: Text(l.commonSkip)),
                  const SizedBox(width: 8),
                  FilledButton(
                    onPressed: canContinue ? c.next : null,
                    child: Text(
                      nextIsResult ? l.wizardSeeResult : l.commonNext,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
