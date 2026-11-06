import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/app/providers.dart';
import 'package:prop_check/domain/engine/engine.dart';
import 'package:prop_check/features/wizard/wizard_controller.dart';
import 'package:prop_check/features/wizard/wizard_screen.dart';
import 'package:prop_check/features/wizard/wizard_state.dart';

import '../support/fixtures.dart';
import '../support/pump.dart';

void main() {
  final profile = bundledProfile();

  group('visible steps', () {
    List<WizardStep> stepsFor(PropertyStatus s) {
      final d = WizardDraft.initial(profile, currentYear: 2026);
      return d.copyWith(input: d.input.copyWith(status: s)).visibleSteps;
    }

    test('under construction skips resale details', () {
      final s = stepsFor(PropertyStatus.underConstruction);
      expect(s, hasLength(13));
      expect(s, isNot(contains(WizardStep.resaleDetails)));
      expect(s, containsAll([WizardStep.builderExtras, WizardStep.ucDetails]));
    });

    test('ready possession skips resale and UC details', () {
      final s = stepsFor(PropertyStatus.readyPossession);
      expect(s, hasLength(12));
      expect(s, contains(WizardStep.builderExtras));
      expect(s, isNot(contains(WizardStep.ucDetails)));
    });

    test('resale skips builder extras and UC details', () {
      final s = stepsFor(PropertyStatus.resale);
      expect(s, hasLength(12));
      expect(s, contains(WizardStep.resaleDetails));
      expect(s, isNot(contains(WizardStep.builderExtras)));
    });
  });

  group('controller', () {
    late ProviderContainer container;
    setUp(() async {
      container = ProviderContainer(
        overrides: [activeProfileProvider.overrideWith((ref) => profile)],
      );
      await container.read(activeProfileProvider.future);
    });
    tearDown(() => container.dispose());

    test('next skips hidden screens and back keeps answers', () {
      final c = container.read(wizardControllerProvider.notifier);
      c.setStatus(PropertyStatus.resale);
      c.goTo(WizardStep.maintenance);
      c.next();
      expect(
        container.read(wizardControllerProvider).step,
        WizardStep.resaleDetails,
      );
      c.next();
      expect(
        container.read(wizardControllerProvider).step,
        WizardStep.financing,
      );
      c.updateFinance((f) => f.copyWith(netIncome: 150000));
      c.back();
      c.next();
      expect(
        container.read(wizardControllerProvider).draft.input.finance?.netIncome,
        150000,
      );
    });

    test('skipping financing turns the loan off', () {
      final c = container.read(wizardControllerProvider.notifier);
      c.goTo(WizardStep.financing);
      c.skip();
      final s = container.read(wizardControllerProvider);
      expect(s.step, WizardStep.oneTime);
      expect(s.draft.input.usingLoan, isFalse);
    });

    test('changing type moves an untouched carpet default', () {
      final c = container.read(wizardControllerProvider.notifier);
      c.setType('2BHK');
      expect(
        container.read(wizardControllerProvider).draft.input.carpetSqft,
        profile.defaultCarpetFor('2BHK'),
      );
      c.updateInput((i) => i.copyWith(carpetSqft: 555));
      c.setType('1RK');
      expect(
        container.read(wizardControllerProvider).draft.input.carpetSqft,
        555,
      );
    });

    test('live outcome appears once the amount is entered', () {
      final c = container.read(wizardControllerProvider.notifier);
      expect(container.read(wizardOutcomeProvider), isNull);
      c.updateInput((i) => i.copyWith(quotedPrice: 5000000));
      expect(container.read(wizardOutcomeProvider), isNotNull);
    });
  });

  testWidgets('progress counts only visible screens', (tester) async {
    await pumpWithProfile(tester, const WizardScreen(), profile);
    expect(find.text('Step 1 of 12'), findsOneWidget);
    await tester.tap(find.text('Next'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Next'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Next'));
    await tester.pumpAndSettle();
    expect(find.text('What stage is it at?'), findsOneWidget);
    await tester.tap(find.text('Under construction'));
    await tester.pumpAndSettle();
    expect(find.text('Step 4 of 13'), findsOneWidget);
  });

  testWidgets('result renders the first golden case', (tester) async {
    final golden = readJson('test_fixtures/golden_cases.json');
    final c0 = (golden['cases'] as List).first as Map<String, dynamic>;
    final input = PropertyInput.fromJson(c0['input'] as Map<String, dynamic>);

    final container = await pumpWithProfile(
      tester,
      const WizardScreen(),
      profile,
    );
    container
        .read(wizardControllerProvider.notifier)
        .load(
          WizardDraft(profileId: profile.id, input: input),
          step: WizardStep.result,
        );
    await tester.pumpAndSettle();

    expect(find.text('Total you will pay'), findsWidgets);
    expect(find.text('₹1,13,19,750'), findsWidgets);
    await tester.scrollUntilVisible(find.text('Probable loan'), 300);
    expect(find.text('₹75,00,000'), findsWidgets);
    await tester.scrollUntilVisible(find.text('Not enough own funds'), 300);
    await tester.scrollUntilVisible(find.text('Seller has a home loan'), 300);
    await tester.scrollUntilVisible(
      find.textContaining('not legal or financial advice'),
      300,
    );
  });

  testWidgets('loan card asks for income when none is entered', (tester) async {
    final golden = readJson('test_fixtures/golden_cases.json');
    final c0 = (golden['cases'] as List).first as Map<String, dynamic>;
    final input = PropertyInput.fromJson(c0['input'] as Map<String, dynamic>);
    final container = await pumpWithProfile(
      tester,
      const WizardScreen(),
      profile,
    );
    final c = container.read(wizardControllerProvider.notifier);
    final noIncome = input.copyWith(
      finance: input.finance!.copyWith(netIncome: 0),
    );
    c.load(
      WizardDraft(profileId: profile.id, input: noIncome),
      step: WizardStep.result,
    );
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('Probable loan'), 300);
    expect(
      find.textContaining('Enter your net monthly income'),
      findsOneWidget,
    );

    c.load(
      WizardDraft(profileId: profile.id, input: input),
      step: WizardStep.result,
    );
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('Probable loan'), 300);
    expect(find.textContaining('Enter your net monthly income'), findsNothing);
    expect(find.textContaining('Limited by loan-to-value'), findsOneWidget);
  });

  testWidgets('wizard survives large text', (tester) async {
    tester.platformDispatcher.textScaleFactorTestValue = 2;
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
    await pumpWithProfile(tester, const WizardScreen(), profile);
    expect(tester.takeException(), isNull);
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
