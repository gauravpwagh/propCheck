import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/domain/engine/engine.dart';
import 'package:prop_check/features/wizard/wizard_controller.dart';
import 'package:prop_check/features/wizard/wizard_screen.dart';
import 'package:prop_check/features/wizard/wizard_state.dart';

import '../support/fixtures.dart';
import '../support/pump.dart';

void main() {
  final profile = bundledProfile();
  final golden = readJson('test_fixtures/golden_cases.json');
  final cases = (golden['cases'] as List).cast<Map<String, dynamic>>();

  testWidgets('first wizard screen meets tap-target and contrast guidelines', (
    tester,
  ) async {
    final handle = tester.ensureSemantics();
    await pumpWithProfile(tester, const WizardScreen(), profile);
    await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
    await expectLater(tester, meetsGuideline(iOSTapTargetGuideline));
    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
    await expectLater(tester, meetsGuideline(textContrastGuideline));
    handle.dispose();
  });

  for (final brightness in Brightness.values) {
    testWidgets('every wizard screen lays out at 2x text ($brightness)', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(1080, 2340);
      tester.view.devicePixelRatio = 3;
      tester.platformDispatcher.textScaleFactorTestValue = 2;
      addTearDown(tester.view.reset);
      addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);

      final container = await pumpWithProfile(
        tester,
        const WizardScreen(),
        profile,
        brightness: brightness,
      );
      final c = container.read(wizardControllerProvider.notifier);
      c.updateInput((i) => i.copyWith(quotedPrice: 8500000));
      for (final status in PropertyStatus.values) {
        c.setStatus(status);
        for (final step in container.read(wizardControllerProvider).steps) {
          c.goTo(step);
          await tester.pumpAndSettle();
          expect(tester.takeException(), isNull, reason: '$status $step');
        }
      }
    });
  }

  testWidgets('every golden result lays out at 2x text in dark mode', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1080, 2340);
    tester.view.devicePixelRatio = 3;
    tester.platformDispatcher.textScaleFactorTestValue = 2;
    addTearDown(tester.view.reset);
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);

    final container = await pumpWithProfile(
      tester,
      const WizardScreen(),
      profile,
      brightness: Brightness.dark,
    );
    for (final c in cases) {
      final input = PropertyInput.fromJson(c['input'] as Map<String, dynamic>);
      final mode = EstimateMode.fromKey(c['mode'] as String);
      container
          .read(wizardControllerProvider.notifier)
          .load(
            WizardDraft(
              profileId: profile.id,
              input: input,
              mode: mode,
              budget: c['budget'] as int?,
            ),
            step: WizardStep.result,
          );
      await tester.pumpAndSettle();
      // Scroll through the whole result so every card is built.
      await tester.fling(
        find.byType(Scrollable).first,
        const Offset(0, -20000),
        5000,
      );
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull, reason: c['name'] as String);
    }
  });
}
