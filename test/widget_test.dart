import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/app/app.dart';

void main() {
  testWidgets('app starts on the home screen', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: PropCheckApp()));
    await tester.pumpAndSettle();
    expect(find.text('New estimate'), findsOneWidget);
  });
}
