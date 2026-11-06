import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/domain/engine/engine.dart';

import '../support/fixtures.dart';

void main() {
  test('only residential flats are enabled in v1', () {
    expect(PropertyCategory.values.where((c) => c.enabled), [
      PropertyCategory.residentialFlat,
    ]);
  });

  test('input defaults to residential_flat and round-trips the key', () {
    final input = PropertyInput.fromJson({
      'status': 'resale',
      'type': '1BHK',
      'quoted_price': 5000000,
      'carpet_sqft': 400,
      'ownership': 'male',
      'current_year': 2026,
    });
    expect(input.category, PropertyCategory.residentialFlat);
    expect(input.toJson()['category'], 'residential_flat');
  });

  test('registry selects lines by category and status', () {
    final reg = CostLineRegistry.standard;
    final resale = reg
        .linesFor(PropertyCategory.residentialFlat, PropertyStatus.resale)
        .map((l) => l.key);
    expect(resale, containsAll(['brokerage', 'society_transfer']));
    expect(resale, isNot(contains('pre_emi_interest')));
    expect(reg.linesFor(PropertyCategory.plot, PropertyStatus.resale), isEmpty);
  });

  test('bundled profile supports flats only', () {
    final p = bundledProfile();
    expect(p.supportsCategory(PropertyCategory.residentialFlat), isTrue);
    expect(p.supportsCategory(PropertyCategory.plot), isFalse);
  });
}
