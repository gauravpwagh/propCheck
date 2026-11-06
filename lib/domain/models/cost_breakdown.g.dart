// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_breakdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CostBreakdown _$CostBreakdownFromJson(Map<String, dynamic> json) =>
    _CostBreakdown(
      lines: Map<String, int>.from(json['lines'] as Map),
      total: (json['total'] as num).toInt(),
      extraOverQuoted: (json['extra_over_quoted'] as num).toInt(),
      extraPctOfQuoted: (json['extra_pct_of_quoted'] as num).toDouble(),
      gstPctApplied: (json['gst_pct_applied'] as num).toDouble(),
      affordableHousing: json['affordable_housing'] as bool,
      loan: LoanResult.fromJson(json['loan'] as Map<String, dynamic>),
      ownFundsNeeded: (json['own_funds_needed'] as num).toInt(),
      tdsApplicable: json['tds_applicable'] as bool,
      tdsAmount: (json['tds_amount'] as num).toInt(),
      sellerBankPayoff: (json['seller_bank_payoff'] as num).toInt(),
      perSqft: PerSqft.fromJson(json['per_sqft'] as Map<String, dynamic>),
      buildingAge: (json['building_age'] as num).toInt(),
      flags: (json['flags'] as List<dynamic>)
          .map((e) => Flag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CostBreakdownToJson(_CostBreakdown instance) =>
    <String, dynamic>{
      'lines': instance.lines,
      'total': instance.total,
      'extra_over_quoted': instance.extraOverQuoted,
      'extra_pct_of_quoted': instance.extraPctOfQuoted,
      'gst_pct_applied': instance.gstPctApplied,
      'affordable_housing': instance.affordableHousing,
      'loan': instance.loan.toJson(),
      'own_funds_needed': instance.ownFundsNeeded,
      'tds_applicable': instance.tdsApplicable,
      'tds_amount': instance.tdsAmount,
      'seller_bank_payoff': instance.sellerBankPayoff,
      'per_sqft': instance.perSqft.toJson(),
      'building_age': instance.buildingAge,
      'flags': instance.flags.map((e) => e.toJson()).toList(),
    };

_LoanResult _$LoanResultFromJson(Map<String, dynamic> json) => _LoanResult(
  loan: (json['loan'] as num).toInt(),
  tenureYears: (json['tenure_years'] as num).toInt(),
  binding: json['binding'] as String,
  emi: (json['emi'] as num).toInt(),
  loanByIncome: (json['loan_by_income'] as num).toInt(),
  loanByLtv: (json['loan_by_ltv'] as num).toInt(),
  residualLifeYears: (json['residual_life_years'] as num?)?.toInt(),
);

Map<String, dynamic> _$LoanResultToJson(_LoanResult instance) =>
    <String, dynamic>{
      'loan': instance.loan,
      'tenure_years': instance.tenureYears,
      'binding': instance.binding,
      'emi': instance.emi,
      'loan_by_income': instance.loanByIncome,
      'loan_by_ltv': instance.loanByLtv,
      'residual_life_years': instance.residualLifeYears,
    };

_PerSqft _$PerSqftFromJson(Map<String, dynamic> json) => _PerSqft(
  quotedCarpet: (json['quoted_carpet'] as num).toInt(),
  quotedBuiltup: (json['quoted_builtup'] as num).toInt(),
  allInCarpet: (json['all_in_carpet'] as num).toInt(),
  allInBuiltup: (json['all_in_builtup'] as num).toInt(),
  loadingPct: (json['loading_pct'] as num).toDouble(),
);

Map<String, dynamic> _$PerSqftToJson(_PerSqft instance) => <String, dynamic>{
  'quoted_carpet': instance.quotedCarpet,
  'quoted_builtup': instance.quotedBuiltup,
  'all_in_carpet': instance.allInCarpet,
  'all_in_builtup': instance.allInBuiltup,
  'loading_pct': instance.loadingPct,
};

_Flag _$FlagFromJson(Map<String, dynamic> json) => _Flag(
  id: json['id'] as String,
  severity: $enumDecode(_$FlagSeverityEnumMap, json['severity']),
);

Map<String, dynamic> _$FlagToJson(_Flag instance) => <String, dynamic>{
  'id': instance.id,
  'severity': _$FlagSeverityEnumMap[instance.severity]!,
};

const _$FlagSeverityEnumMap = {
  FlagSeverity.critical: 'critical',
  FlagSeverity.warning: 'warning',
  FlagSeverity.info: 'info',
};
