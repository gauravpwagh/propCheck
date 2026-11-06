import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/data/import/risk_schema.dart';

import '../support/fixtures.dart';

void main() {
  final bundled = readJson('assets/data/mumbai_risk_data.json');

  test('bundled risk data is valid', () {
    expect(validateRiskData(bundled), isEmpty);
  });

  test('reports field-level problems', () {
    final bad = Map<String, dynamic>.of(bundled)
      ..remove('region')
      ..['schema_version'] = '2.0';
    final patterns = [
      for (final p in bundled['scam_patterns'] as List)
        Map<String, dynamic>.of(p as Map<String, dynamic>),
    ];
    patterns[1]['severity'] = 'extreme';
    bad['scam_patterns'] = patterns;

    final problems = validateRiskData(bad);
    final paths = problems.map((p) => p.path).toList();
    expect(paths, contains('/schema_version'));
    expect(paths, contains('/scam_patterns/1/severity'));
    expect(problems.any((p) => p.message.contains('region')), isTrue);
  });

  test('rejects non-objects', () {
    expect(validateRiskData([1, 2]), isNotEmpty);
  });
}
