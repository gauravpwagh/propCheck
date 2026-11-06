import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/data/repositories/checklist_repository.dart';

import '../support/app_harness.dart';

void main() {
  testWidgets('detail shows a persisted checklist with safety checks', (
    tester,
  ) async {
    final h = AppHarness();
    final id = await h.saveGolden(tester, 0, name: 'Seller-loan resale');
    await h.pump(tester, location: '/property/$id');

    final list = find.byType(Scrollable).first;
    await tester.scrollUntilVisible(
      find.text("Get the seller bank's letters"),
      300,
      scrollable: list,
    );
    await tester.ensureVisible(find.text("Get the seller bank's letters"));
    await tester.pump();
    await tester.tap(find.text("Get the seller bank's letters"));
    await h.settle(tester);

    final rows = await tester.runAsync(
      () => ChecklistRepository(h.db).load(id),
    );
    expect(rows!.where((r) => r.source == ChecklistSource.safety), isNotEmpty);
    expect(
      rows.singleWhere((r) => r.itemId == 'rs_seller_loan_docs').done,
      isTrue,
    );

    await tester.scrollUntilVisible(
      find.text('Scams to watch for'),
      300,
      scrollable: list,
    );
    await h.dispose(tester);
  });

  testWidgets('risks library opens the linked pattern', (tester) async {
    final h = AppHarness();
    await h.pump(tester, location: '/risks?pattern=double_sale');
    expect(find.text('Same flat sold to multiple buyers'), findsOneWidget);
    expect(find.text('Watch for'), findsOneWidget);
    expect(find.textContaining('Risk data as of'), findsOneWidget);
    await h.dispose(tester);
  });
}
