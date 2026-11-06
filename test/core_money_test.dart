import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/core/money.dart';

void main() {
  test('full uses Indian grouping', () {
    expect(Money.full(1234567), '₹12,34,567');
    expect(Money.full(999), '₹999');
    expect(Money.full(-150000), '-₹1,50,000');
  });
  test('compact uses lakh and crore', () {
    expect(Money.compact(1234567), '12.35 L');
    expect(Money.compact(10200000), '1.02 Cr');
    expect(Money.compact(50000), '₹50,000');
  });
  test('parse accepts lakh/crore shorthand', () {
    expect(Money.parse('12,34,567'), 1234567);
    expect(Money.parse('12.5 L'), 1250000);
    expect(Money.parse('1.2 Cr'), 12000000);
    expect(Money.parse(''), isNull);
    expect(Money.parse('abc'), isNull);
  });
}
