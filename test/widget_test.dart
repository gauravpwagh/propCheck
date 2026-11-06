import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/app/app.dart';

void main() {
  testWidgets('app starts and shows its name', (tester) async {
    await tester.pumpWidget(const PropCheckApp());
    await tester.pumpAndSettle();
    expect(find.text('PropCheck'), findsWidgets);
  });
}
