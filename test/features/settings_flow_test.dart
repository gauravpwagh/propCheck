import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../support/app_harness.dart';

void main() {
  Future<void> scrollTo(WidgetTester tester, Finder f) => tester
      .scrollUntilVisible(f, 200, scrollable: find.byType(Scrollable).first);

  testWidgets('settings shows rates, risk data and backup', (tester) async {
    final h = AppHarness();
    await h.pump(tester, location: '/settings');
    expect(find.textContaining('Mumbai (BMC) · v1'), findsOneWidget);
    await scrollTo(tester, find.text('Import risk data (JSON)'));
    await scrollTo(tester, find.text('Export all properties'));
    await scrollTo(tester, find.text('Your data stays on this phone'));
    await h.dispose(tester);
  });

  testWidgets('loan editor lists LTV slabs and validates', (tester) async {
    final h = AppHarness();
    await h.pump(tester, location: '/settings/profile/loan');
    final foir = find.widgetWithText(
      TextFormField,
      'Share of income for EMIs (%)',
    );
    await tester.enterText(foir, '150');
    await tester.pump();
    expect(find.text('Enter a percentage between 0 and 100'), findsOneWidget);
    await scrollTo(tester, find.text('Slab 3: loan-to-value (%)'));
    await h.dispose(tester);
  });

  testWidgets('risk import shows field-level problems', (tester) async {
    final h = AppHarness();
    await h.pump(tester, location: '/settings/risk-import');
    await tester.enterText(
      find.widgetWithText(TextField, 'Risk data JSON'),
      '{"schema_version": "2.0"}',
    );
    await scrollTo(tester, find.text('Validate and import'));
    await tester.tap(find.text('Validate and import'));
    await h.settle(tester);
    await scrollTo(tester, find.textContaining('problems found'));
    await scrollTo(tester, find.text('/schema_version'));
    await h.dispose(tester);
  });
}
