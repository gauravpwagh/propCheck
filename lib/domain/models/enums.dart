import 'package:json_annotation/json_annotation.dart';

/// Property category (SPEC §10). Only [residentialFlat] is selectable in v1;
/// the others exist so v2 can add rules without a data migration.
@JsonEnum(valueField: 'key')
enum PropertyCategory {
  residentialFlat('residential_flat', enabled: true),
  rowHouseBungalow('row_house_bungalow'),
  plot('plot'),
  shop('shop'),
  office('office');

  const PropertyCategory(this.key, {this.enabled = false});

  final String key;
  final bool enabled;

  static PropertyCategory fromKey(String key) =>
      values.firstWhere((c) => c.key == key);
}

@JsonEnum(valueField: 'key')
enum PropertyStatus {
  underConstruction('under_construction'),
  readyPossession('ready_possession'),
  resale('resale');

  const PropertyStatus(this.key);

  final String key;

  static PropertyStatus fromKey(String key) =>
      values.firstWhere((s) => s.key == key);
}

@JsonEnum(valueField: 'key')
enum Ownership {
  male('male'),
  female('female'),
  joint('joint');

  const Ownership(this.key);

  final String key;

  static Ownership fromKey(String key) =>
      values.firstWhere((o) => o.key == key);
}

@JsonEnum(valueField: 'key')
enum Employment {
  salaried('salaried'),
  selfEmployed('self_employed');

  const Employment(this.key);

  final String key;

  static Employment fromKey(String key) =>
      values.firstWhere((e) => e.key == key);
}

@JsonEnum(valueField: 'key')
enum EstimateMode {
  priceToTotal('price_to_total'),
  budgetToPrice('budget_to_price');

  const EstimateMode(this.key);

  final String key;

  static EstimateMode fromKey(String key) =>
      values.firstWhere((m) => m.key == key);
}

/// Ordered most to least severe; `index` is used for sorting.
@JsonEnum(valueField: 'key')
enum FlagSeverity {
  critical('critical'),
  warning('warning'),
  info('info');

  const FlagSeverity(this.key);

  final String key;
}

/// Flat types offered for [PropertyCategory.residentialFlat].
const flatTypes = ['1RK', '1BHK', '2BHK'];
