import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../support/app_harness.dart';

void main() {
  testWidgets('home lists saved properties with cached totals', (tester) async {
    final h = AppHarness();
    await h.saveGolden(tester, 0, name: 'Andheri resale');
    await h.saveGolden(tester, 6, name: 'Small 1RK');
    await h.pump(tester);

    expect(find.text('Andheri resale'), findsOneWidget);
    expect(find.text('Small 1RK'), findsOneWidget);
    expect(find.text('₹1.13 Cr'), findsOneWidget);

    await tester.enterText(find.byType(TextField), '1rk');
    await h.settle(tester);
    expect(find.text('Andheri resale'), findsNothing);
    expect(find.text('Small 1RK'), findsOneWidget);
    await h.dispose(tester);
  });

  testWidgets('detail recomputes from stored inputs', (tester) async {
    final h = AppHarness();
    final id = await h.saveGolden(tester, 0, name: 'Andheri resale');
    await h.pump(tester, location: '/property/$id');

    expect(find.text('Andheri resale'), findsOneWidget);
    expect(find.text('₹1,13,19,750'), findsWidgets);
    expect(find.textContaining('Calculated with rates v1'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Your inputs'), 400);
    expect(find.text('Building details'), findsOneWidget);
    await h.dispose(tester);
  });

  testWidgets('tapping an input section edits that screen', (tester) async {
    final h = AppHarness();
    final id = await h.saveGolden(tester, 0, name: 'Andheri resale');
    await h.pump(tester, location: '/property/$id');

    final section = find.text('Home loan');
    await tester.scrollUntilVisible(
      section,
      200,
      scrollable: find.byType(Scrollable).first,
    );
    await h.settle(tester);
    await tester.tap(section);
    await h.settle(tester);

    expect(find.text('Edit estimate'), findsOneWidget);
    expect(find.text('New estimate'), findsNothing);
    expect(find.textContaining('Step 1 of'), findsNothing);
    await h.dispose(tester);
  });

  testWidgets('compare aligns rows and highlights best value', (tester) async {
    final h = AppHarness();
    final a = await h.saveGolden(tester, 0, name: 'Flat A');
    final b = await h.saveGolden(tester, 6, name: 'Flat B');
    await h.pump(tester, location: '/compare?ids=$a,$b');

    expect(find.text('Flat A'), findsWidgets);
    expect(find.text('Flat B'), findsWidgets);
    expect(find.text('₹1,13,19,750'), findsOneWidget);
    expect(find.text('₹40,80,300'), findsWidgets);
    expect(
      find.bySemanticsLabel(RegExp('₹40,80,300, Best value')),
      findsWidgets,
    );
    await tester.scrollUntilVisible(
      find.text('Where the money goes'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await h.dispose(tester);
  });
}
