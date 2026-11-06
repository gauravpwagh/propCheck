import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/app/app.dart';
import 'package:prop_check/app/providers.dart';
import 'package:prop_check/data/db/app_database.dart';

import 'support/fixtures.dart';

void main() {
  testWidgets('app starts on the empty home screen', (tester) async {
    final db = AppDatabase.memory();
    addTearDown(db.close);
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          appDatabaseProvider.overrideWithValue(db),
          assetSourceProvider.overrideWithValue(const FileAssetSource()),
        ],
        child: const PropCheckApp(),
      ),
    );
    await tester.runAsync(
      () => Future<void>.delayed(const Duration(milliseconds: 300)),
    );
    await tester.pumpAndSettle();
    expect(find.text('New estimate'), findsOneWidget);
    expect(find.text('No properties yet'), findsOneWidget);

    // Unmount so drift's stream-close timer fires inside the test.
    await tester.pumpWidget(const SizedBox());
    await tester.pump(Duration.zero);
  });
}
