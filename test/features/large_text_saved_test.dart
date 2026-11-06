import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../support/app_harness.dart';

void main() {
  for (final location in [
    '/',
    '/property/1',
    '/compare?ids=1,2',
    '/settings',
    '/risks',
  ]) {
    testWidgets('$location lays out at 2x text', (tester) async {
      tester.view.physicalSize = const Size(1080, 2340);
      tester.view.devicePixelRatio = 3;
      tester.platformDispatcher.textScaleFactorTestValue = 2;
      addTearDown(tester.view.reset);
      addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);

      final h = AppHarness();
      await h.saveGolden(tester, 0, name: 'Andheri seller-loan resale');
      await h.saveGolden(tester, 4, name: 'Joint 2BHK ready');
      await h.pump(tester, location: location);
      await tester.fling(
        find.byType(Scrollable).first,
        const Offset(0, -20000),
        5000,
      );
      await h.settle(tester);
      expect(tester.takeException(), isNull);
      await h.dispose(tester);
    });
  }
}
