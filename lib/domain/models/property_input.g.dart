// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PropertyInput _$PropertyInputFromJson(Map<String, dynamic> json) =>
    _PropertyInput(
      category:
          $enumDecodeNullable(_$PropertyCategoryEnumMap, json['category']) ??
          PropertyCategory.residentialFlat,
      status: $enumDecode(_$PropertyStatusEnumMap, json['status']),
      type: json['type'] as String,
      quotedPrice: (json['quoted_price'] as num).toInt(),
      carpetSqft: (json['carpet_sqft'] as num).toDouble(),
      builtupSqft: (json['builtup_sqft'] as num?)?.toDouble(),
      ownership: $enumDecode(_$OwnershipEnumMap, json['ownership']),
      readyReckonerValue: (json['ready_reckoner_value'] as num?)?.toInt(),
      areaReferencePsf: (json['area_reference_psf'] as num?)?.toDouble(),
      extras:
          (json['extras'] as List<dynamic>?)
              ?.map((e) => Extra.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Extra>[],
      corpus: (json['corpus'] as num?)?.toInt(),
      maintenanceMonths: (json['maintenance_months'] as num?)?.toInt(),
      maintenanceRatePsf: (json['maintenance_rate_psf'] as num?)?.toDouble(),
      transferFee: (json['transfer_fee'] as num?)?.toInt(),
      brokeragePct: (json['brokerage_pct'] as num?)?.toDouble(),
      buildingYear: (json['building_year'] as num?)?.toInt(),
      hasOc: json['has_oc'] as bool?,
      sellerLoan: (json['seller_loan'] as num?)?.toInt(),
      reraNumber: json['rera_number'] as String?,
      monthsToPossession: (json['months_to_possession'] as num?)?.toInt(),
      monthlyRent: (json['monthly_rent'] as num?)?.toInt(),
      legalFees: (json['legal_fees'] as num?)?.toInt(),
      interiors: (json['interiors'] as num?)?.toInt(),
      currentYear: (json['current_year'] as num).toInt(),
      finance: json['finance'] == null
          ? null
          : Finance.fromJson(json['finance'] as Map<String, dynamic>),
      locality: json['locality'] as String?,
    );

Map<String, dynamic> _$PropertyInputToJson(_PropertyInput instance) =>
    <String, dynamic>{
      'category': _$PropertyCategoryEnumMap[instance.category]!,
      'status': _$PropertyStatusEnumMap[instance.status]!,
      'type': instance.type,
      'quoted_price': instance.quotedPrice,
      'carpet_sqft': instance.carpetSqft,
      'builtup_sqft': ?instance.builtupSqft,
      'ownership': _$OwnershipEnumMap[instance.ownership]!,
      'ready_reckoner_value': ?instance.readyReckonerValue,
      'area_reference_psf': ?instance.areaReferencePsf,
      'extras': instance.extras.map((e) => e.toJson()).toList(),
      'corpus': ?instance.corpus,
      'maintenance_months': ?instance.maintenanceMonths,
      'maintenance_rate_psf': ?instance.maintenanceRatePsf,
      'transfer_fee': ?instance.transferFee,
      'brokerage_pct': ?instance.brokeragePct,
      'building_year': ?instance.buildingYear,
      'has_oc': ?instance.hasOc,
      'seller_loan': ?instance.sellerLoan,
      'rera_number': ?instance.reraNumber,
      'months_to_possession': ?instance.monthsToPossession,
      'monthly_rent': ?instance.monthlyRent,
      'legal_fees': ?instance.legalFees,
      'interiors': ?instance.interiors,
      'current_year': instance.currentYear,
      'finance': ?instance.finance?.toJson(),
      'locality': ?instance.locality,
    };

const _$PropertyCategoryEnumMap = {
  PropertyCategory.residentialFlat: 'residential_flat',
  PropertyCategory.rowHouseBungalow: 'row_house_bungalow',
  PropertyCategory.plot: 'plot',
  PropertyCategory.shop: 'shop',
  PropertyCategory.office: 'office',
};

const _$PropertyStatusEnumMap = {
  PropertyStatus.underConstruction: 'under_construction',
  PropertyStatus.readyPossession: 'ready_possession',
  PropertyStatus.resale: 'resale',
};

const _$OwnershipEnumMap = {
  Ownership.male: 'male',
  Ownership.female: 'female',
  Ownership.joint: 'joint',
};

_Extra _$ExtraFromJson(Map<String, dynamic> json) => _Extra(
  kind: json['kind'] as String,
  amount: (json['amount'] as num).toInt(),
  inAgreement: json['in_agreement'] as bool? ?? true,
);

Map<String, dynamic> _$ExtraToJson(_Extra instance) => <String, dynamic>{
  'kind': instance.kind,
  'amount': instance.amount,
  'in_agreement': instance.inAgreement,
};

_Finance _$FinanceFromJson(Map<String, dynamic> json) => _Finance(
  usingLoan: json['using_loan'] as bool? ?? false,
  age: (json['age'] as num?)?.toInt() ?? 0,
  employment:
      $enumDecodeNullable(_$EmploymentEnumMap, json['employment']) ??
      Employment.salaried,
  netIncome: (json['net_income'] as num?)?.toInt() ?? 0,
  existingEmi: (json['existing_emi'] as num?)?.toInt() ?? 0,
  ratePct: (json['rate_pct'] as num?)?.toDouble(),
  tenureYears: (json['tenure_years'] as num?)?.toInt(),
  ownFunds: (json['own_funds'] as num?)?.toInt(),
);

Map<String, dynamic> _$FinanceToJson(_Finance instance) => <String, dynamic>{
  'using_loan': instance.usingLoan,
  'age': instance.age,
  'employment': _$EmploymentEnumMap[instance.employment]!,
  'net_income': instance.netIncome,
  'existing_emi': instance.existingEmi,
  'rate_pct': ?instance.ratePct,
  'tenure_years': ?instance.tenureYears,
  'own_funds': ?instance.ownFunds,
};

const _$EmploymentEnumMap = {
  Employment.salaried: 'salaried',
  Employment.selfEmployed: 'self_employed',
};
