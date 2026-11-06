import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/domain/engine/engine.dart';

import '../support/fixtures.dart';

/// Every case in test_fixtures/golden_cases.json must match to the rupee.
void main() {
  final golden = readJson('test_fixtures/golden_cases.json');
  final profile = bundledProfile(golden['profile_id'] as String);
  final cases = (golden['cases'] as List).cast<Map<String, dynamic>>();

  test('fixtures were generated from the bundled profile version', () {
    expect(profile.version, golden['profile_version']);
    expect(cases, hasLength(9));
  });

  for (final c in cases) {
    test(c['name'] as String, () {
      final input = PropertyInput.fromJson(c['input'] as Map<String, dynamic>);
      final expected = c['expected'] as Map<String, dynamic>;

      late CostBreakdown actual;
      if (c['mode'] == 'budget_to_price') {
        final r = solveBudget(input, profile, c['budget'] as int);
        expect(r.maxPrice, c['expected_max_price'], reason: 'max price');
        actual = r.breakdown;
      } else {
        actual = estimate(input, profile);
      }

      final lines = (expected['lines'] as Map).cast<String, int>();
      expect(
        actual.lines.keys.toList(),
        lines.keys.toList(),
        reason: 'line keys and order',
      );
      for (final k in lines.keys) {
        expect(actual.lines[k], lines[k], reason: 'line $k');
      }
      expect(actual.total, expected['total']);
      expect(actual.extraOverQuoted, expected['extra_over_quoted']);
      expect(actual.extraPctOfQuoted, expected['extra_pct_of_quoted']);
      expect(actual.gstPctApplied, expected['gst_pct_applied']);
      expect(actual.affordableHousing, expected['affordable_housing']);
      expect(actual.ownFundsNeeded, expected['own_funds_needed']);
      expect(actual.tdsApplicable, expected['tds_applicable']);
      expect(actual.tdsAmount, expected['tds_amount']);
      expect(actual.sellerBankPayoff, expected['seller_bank_payoff']);
      expect(actual.buildingAge, expected['building_age']);

      final loan = expected['loan'] as Map<String, dynamic>;
      expect(actual.loan.toJson(), loan, reason: 'loan');

      final psf = expected['per_sqft'] as Map<String, dynamic>;
      expect(actual.perSqft.toJson(), psf, reason: 'per sq ft');

      final flags = (expected['flags'] as List)
          .cast<Map<String, dynamic>>()
          .map((f) => '${f['id']}:${f['severity']}')
          .toList();
      expect(
        actual.flags.map((f) => '${f.id}:${f.severity.key}').toList(),
        flags,
        reason: 'flags',
      );
    });
  }
}
