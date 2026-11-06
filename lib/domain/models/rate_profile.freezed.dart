// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RateProfile {

 String get id; String get city; int get version; String get asOf; bool get isBundled; Map<String, double> get stampDutyPct; bool get includesMetroCess; double get registrationPct; int get registrationCapInr; Map<String, double> get gstPct; AffordableHousing get affordableHousing; TdsRule get tds; double get brokeragePctDefault; double get serviceGstPct; int get societyTransferFeeInr; double get maintenanceRatePsfMonth; Map<String, int> get advanceMaintenanceMonths; int get legalFeesInr; double get loanProcessingPct; MortgageStampDuty get mortgageStampDuty; double get preEmiAvgDisbursedFraction; Map<String, int> get interiorsInr; List<RenovationBand> get renovationPsfByAge; Map<String, double> get defaultCarpetSqft; double get builtupToCarpetRatio; LoanAssumptions get loan; FlagThresholds get flagThresholds; WizardDefaults get wizardDefaults; List<SourceLink> get sources;/// Per-category overrides (SPEC §10). Absent means "flat only"; flat
/// values live at the top level.
 Map<String, Object?>? get categories;
/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RateProfileCopyWith<RateProfile> get copyWith => _$RateProfileCopyWithImpl<RateProfile>(this as RateProfile, _$identity);

  /// Serializes this RateProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RateProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.version, version) || other.version == version)&&(identical(other.asOf, asOf) || other.asOf == asOf)&&(identical(other.isBundled, isBundled) || other.isBundled == isBundled)&&const DeepCollectionEquality().equals(other.stampDutyPct, stampDutyPct)&&(identical(other.includesMetroCess, includesMetroCess) || other.includesMetroCess == includesMetroCess)&&(identical(other.registrationPct, registrationPct) || other.registrationPct == registrationPct)&&(identical(other.registrationCapInr, registrationCapInr) || other.registrationCapInr == registrationCapInr)&&const DeepCollectionEquality().equals(other.gstPct, gstPct)&&(identical(other.affordableHousing, affordableHousing) || other.affordableHousing == affordableHousing)&&(identical(other.tds, tds) || other.tds == tds)&&(identical(other.brokeragePctDefault, brokeragePctDefault) || other.brokeragePctDefault == brokeragePctDefault)&&(identical(other.serviceGstPct, serviceGstPct) || other.serviceGstPct == serviceGstPct)&&(identical(other.societyTransferFeeInr, societyTransferFeeInr) || other.societyTransferFeeInr == societyTransferFeeInr)&&(identical(other.maintenanceRatePsfMonth, maintenanceRatePsfMonth) || other.maintenanceRatePsfMonth == maintenanceRatePsfMonth)&&const DeepCollectionEquality().equals(other.advanceMaintenanceMonths, advanceMaintenanceMonths)&&(identical(other.legalFeesInr, legalFeesInr) || other.legalFeesInr == legalFeesInr)&&(identical(other.loanProcessingPct, loanProcessingPct) || other.loanProcessingPct == loanProcessingPct)&&(identical(other.mortgageStampDuty, mortgageStampDuty) || other.mortgageStampDuty == mortgageStampDuty)&&(identical(other.preEmiAvgDisbursedFraction, preEmiAvgDisbursedFraction) || other.preEmiAvgDisbursedFraction == preEmiAvgDisbursedFraction)&&const DeepCollectionEquality().equals(other.interiorsInr, interiorsInr)&&const DeepCollectionEquality().equals(other.renovationPsfByAge, renovationPsfByAge)&&const DeepCollectionEquality().equals(other.defaultCarpetSqft, defaultCarpetSqft)&&(identical(other.builtupToCarpetRatio, builtupToCarpetRatio) || other.builtupToCarpetRatio == builtupToCarpetRatio)&&(identical(other.loan, loan) || other.loan == loan)&&(identical(other.flagThresholds, flagThresholds) || other.flagThresholds == flagThresholds)&&(identical(other.wizardDefaults, wizardDefaults) || other.wizardDefaults == wizardDefaults)&&const DeepCollectionEquality().equals(other.sources, sources)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,city,version,asOf,isBundled,const DeepCollectionEquality().hash(stampDutyPct),includesMetroCess,registrationPct,registrationCapInr,const DeepCollectionEquality().hash(gstPct),affordableHousing,tds,brokeragePctDefault,serviceGstPct,societyTransferFeeInr,maintenanceRatePsfMonth,const DeepCollectionEquality().hash(advanceMaintenanceMonths),legalFeesInr,loanProcessingPct,mortgageStampDuty,preEmiAvgDisbursedFraction,const DeepCollectionEquality().hash(interiorsInr),const DeepCollectionEquality().hash(renovationPsfByAge),const DeepCollectionEquality().hash(defaultCarpetSqft),builtupToCarpetRatio,loan,flagThresholds,wizardDefaults,const DeepCollectionEquality().hash(sources),const DeepCollectionEquality().hash(categories)]);

@override
String toString() {
  return 'RateProfile(id: $id, city: $city, version: $version, asOf: $asOf, isBundled: $isBundled, stampDutyPct: $stampDutyPct, includesMetroCess: $includesMetroCess, registrationPct: $registrationPct, registrationCapInr: $registrationCapInr, gstPct: $gstPct, affordableHousing: $affordableHousing, tds: $tds, brokeragePctDefault: $brokeragePctDefault, serviceGstPct: $serviceGstPct, societyTransferFeeInr: $societyTransferFeeInr, maintenanceRatePsfMonth: $maintenanceRatePsfMonth, advanceMaintenanceMonths: $advanceMaintenanceMonths, legalFeesInr: $legalFeesInr, loanProcessingPct: $loanProcessingPct, mortgageStampDuty: $mortgageStampDuty, preEmiAvgDisbursedFraction: $preEmiAvgDisbursedFraction, interiorsInr: $interiorsInr, renovationPsfByAge: $renovationPsfByAge, defaultCarpetSqft: $defaultCarpetSqft, builtupToCarpetRatio: $builtupToCarpetRatio, loan: $loan, flagThresholds: $flagThresholds, wizardDefaults: $wizardDefaults, sources: $sources, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $RateProfileCopyWith<$Res>  {
  factory $RateProfileCopyWith(RateProfile value, $Res Function(RateProfile) _then) = _$RateProfileCopyWithImpl;
@useResult
$Res call({
 String id, String city, int version, String asOf, bool isBundled, Map<String, double> stampDutyPct, bool includesMetroCess, double registrationPct, int registrationCapInr, Map<String, double> gstPct, AffordableHousing affordableHousing, TdsRule tds, double brokeragePctDefault, double serviceGstPct, int societyTransferFeeInr, double maintenanceRatePsfMonth, Map<String, int> advanceMaintenanceMonths, int legalFeesInr, double loanProcessingPct, MortgageStampDuty mortgageStampDuty, double preEmiAvgDisbursedFraction, Map<String, int> interiorsInr, List<RenovationBand> renovationPsfByAge, Map<String, double> defaultCarpetSqft, double builtupToCarpetRatio, LoanAssumptions loan, FlagThresholds flagThresholds, WizardDefaults wizardDefaults, List<SourceLink> sources, Map<String, Object?>? categories
});


$AffordableHousingCopyWith<$Res> get affordableHousing;$TdsRuleCopyWith<$Res> get tds;$MortgageStampDutyCopyWith<$Res> get mortgageStampDuty;$LoanAssumptionsCopyWith<$Res> get loan;$FlagThresholdsCopyWith<$Res> get flagThresholds;$WizardDefaultsCopyWith<$Res> get wizardDefaults;

}
/// @nodoc
class _$RateProfileCopyWithImpl<$Res>
    implements $RateProfileCopyWith<$Res> {
  _$RateProfileCopyWithImpl(this._self, this._then);

  final RateProfile _self;
  final $Res Function(RateProfile) _then;

/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? city = null,Object? version = null,Object? asOf = null,Object? isBundled = null,Object? stampDutyPct = null,Object? includesMetroCess = null,Object? registrationPct = null,Object? registrationCapInr = null,Object? gstPct = null,Object? affordableHousing = null,Object? tds = null,Object? brokeragePctDefault = null,Object? serviceGstPct = null,Object? societyTransferFeeInr = null,Object? maintenanceRatePsfMonth = null,Object? advanceMaintenanceMonths = null,Object? legalFeesInr = null,Object? loanProcessingPct = null,Object? mortgageStampDuty = null,Object? preEmiAvgDisbursedFraction = null,Object? interiorsInr = null,Object? renovationPsfByAge = null,Object? defaultCarpetSqft = null,Object? builtupToCarpetRatio = null,Object? loan = null,Object? flagThresholds = null,Object? wizardDefaults = null,Object? sources = null,Object? categories = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,asOf: null == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String,isBundled: null == isBundled ? _self.isBundled : isBundled // ignore: cast_nullable_to_non_nullable
as bool,stampDutyPct: null == stampDutyPct ? _self.stampDutyPct : stampDutyPct // ignore: cast_nullable_to_non_nullable
as Map<String, double>,includesMetroCess: null == includesMetroCess ? _self.includesMetroCess : includesMetroCess // ignore: cast_nullable_to_non_nullable
as bool,registrationPct: null == registrationPct ? _self.registrationPct : registrationPct // ignore: cast_nullable_to_non_nullable
as double,registrationCapInr: null == registrationCapInr ? _self.registrationCapInr : registrationCapInr // ignore: cast_nullable_to_non_nullable
as int,gstPct: null == gstPct ? _self.gstPct : gstPct // ignore: cast_nullable_to_non_nullable
as Map<String, double>,affordableHousing: null == affordableHousing ? _self.affordableHousing : affordableHousing // ignore: cast_nullable_to_non_nullable
as AffordableHousing,tds: null == tds ? _self.tds : tds // ignore: cast_nullable_to_non_nullable
as TdsRule,brokeragePctDefault: null == brokeragePctDefault ? _self.brokeragePctDefault : brokeragePctDefault // ignore: cast_nullable_to_non_nullable
as double,serviceGstPct: null == serviceGstPct ? _self.serviceGstPct : serviceGstPct // ignore: cast_nullable_to_non_nullable
as double,societyTransferFeeInr: null == societyTransferFeeInr ? _self.societyTransferFeeInr : societyTransferFeeInr // ignore: cast_nullable_to_non_nullable
as int,maintenanceRatePsfMonth: null == maintenanceRatePsfMonth ? _self.maintenanceRatePsfMonth : maintenanceRatePsfMonth // ignore: cast_nullable_to_non_nullable
as double,advanceMaintenanceMonths: null == advanceMaintenanceMonths ? _self.advanceMaintenanceMonths : advanceMaintenanceMonths // ignore: cast_nullable_to_non_nullable
as Map<String, int>,legalFeesInr: null == legalFeesInr ? _self.legalFeesInr : legalFeesInr // ignore: cast_nullable_to_non_nullable
as int,loanProcessingPct: null == loanProcessingPct ? _self.loanProcessingPct : loanProcessingPct // ignore: cast_nullable_to_non_nullable
as double,mortgageStampDuty: null == mortgageStampDuty ? _self.mortgageStampDuty : mortgageStampDuty // ignore: cast_nullable_to_non_nullable
as MortgageStampDuty,preEmiAvgDisbursedFraction: null == preEmiAvgDisbursedFraction ? _self.preEmiAvgDisbursedFraction : preEmiAvgDisbursedFraction // ignore: cast_nullable_to_non_nullable
as double,interiorsInr: null == interiorsInr ? _self.interiorsInr : interiorsInr // ignore: cast_nullable_to_non_nullable
as Map<String, int>,renovationPsfByAge: null == renovationPsfByAge ? _self.renovationPsfByAge : renovationPsfByAge // ignore: cast_nullable_to_non_nullable
as List<RenovationBand>,defaultCarpetSqft: null == defaultCarpetSqft ? _self.defaultCarpetSqft : defaultCarpetSqft // ignore: cast_nullable_to_non_nullable
as Map<String, double>,builtupToCarpetRatio: null == builtupToCarpetRatio ? _self.builtupToCarpetRatio : builtupToCarpetRatio // ignore: cast_nullable_to_non_nullable
as double,loan: null == loan ? _self.loan : loan // ignore: cast_nullable_to_non_nullable
as LoanAssumptions,flagThresholds: null == flagThresholds ? _self.flagThresholds : flagThresholds // ignore: cast_nullable_to_non_nullable
as FlagThresholds,wizardDefaults: null == wizardDefaults ? _self.wizardDefaults : wizardDefaults // ignore: cast_nullable_to_non_nullable
as WizardDefaults,sources: null == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<SourceLink>,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}
/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AffordableHousingCopyWith<$Res> get affordableHousing {
  
  return $AffordableHousingCopyWith<$Res>(_self.affordableHousing, (value) {
    return _then(_self.copyWith(affordableHousing: value));
  });
}/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TdsRuleCopyWith<$Res> get tds {
  
  return $TdsRuleCopyWith<$Res>(_self.tds, (value) {
    return _then(_self.copyWith(tds: value));
  });
}/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MortgageStampDutyCopyWith<$Res> get mortgageStampDuty {
  
  return $MortgageStampDutyCopyWith<$Res>(_self.mortgageStampDuty, (value) {
    return _then(_self.copyWith(mortgageStampDuty: value));
  });
}/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoanAssumptionsCopyWith<$Res> get loan {
  
  return $LoanAssumptionsCopyWith<$Res>(_self.loan, (value) {
    return _then(_self.copyWith(loan: value));
  });
}/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlagThresholdsCopyWith<$Res> get flagThresholds {
  
  return $FlagThresholdsCopyWith<$Res>(_self.flagThresholds, (value) {
    return _then(_self.copyWith(flagThresholds: value));
  });
}/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WizardDefaultsCopyWith<$Res> get wizardDefaults {
  
  return $WizardDefaultsCopyWith<$Res>(_self.wizardDefaults, (value) {
    return _then(_self.copyWith(wizardDefaults: value));
  });
}
}


/// Adds pattern-matching-related methods to [RateProfile].
extension RateProfilePatterns on RateProfile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RateProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RateProfile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RateProfile value)  $default,){
final _that = this;
switch (_that) {
case _RateProfile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RateProfile value)?  $default,){
final _that = this;
switch (_that) {
case _RateProfile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String city,  int version,  String asOf,  bool isBundled,  Map<String, double> stampDutyPct,  bool includesMetroCess,  double registrationPct,  int registrationCapInr,  Map<String, double> gstPct,  AffordableHousing affordableHousing,  TdsRule tds,  double brokeragePctDefault,  double serviceGstPct,  int societyTransferFeeInr,  double maintenanceRatePsfMonth,  Map<String, int> advanceMaintenanceMonths,  int legalFeesInr,  double loanProcessingPct,  MortgageStampDuty mortgageStampDuty,  double preEmiAvgDisbursedFraction,  Map<String, int> interiorsInr,  List<RenovationBand> renovationPsfByAge,  Map<String, double> defaultCarpetSqft,  double builtupToCarpetRatio,  LoanAssumptions loan,  FlagThresholds flagThresholds,  WizardDefaults wizardDefaults,  List<SourceLink> sources,  Map<String, Object?>? categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RateProfile() when $default != null:
return $default(_that.id,_that.city,_that.version,_that.asOf,_that.isBundled,_that.stampDutyPct,_that.includesMetroCess,_that.registrationPct,_that.registrationCapInr,_that.gstPct,_that.affordableHousing,_that.tds,_that.brokeragePctDefault,_that.serviceGstPct,_that.societyTransferFeeInr,_that.maintenanceRatePsfMonth,_that.advanceMaintenanceMonths,_that.legalFeesInr,_that.loanProcessingPct,_that.mortgageStampDuty,_that.preEmiAvgDisbursedFraction,_that.interiorsInr,_that.renovationPsfByAge,_that.defaultCarpetSqft,_that.builtupToCarpetRatio,_that.loan,_that.flagThresholds,_that.wizardDefaults,_that.sources,_that.categories);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String city,  int version,  String asOf,  bool isBundled,  Map<String, double> stampDutyPct,  bool includesMetroCess,  double registrationPct,  int registrationCapInr,  Map<String, double> gstPct,  AffordableHousing affordableHousing,  TdsRule tds,  double brokeragePctDefault,  double serviceGstPct,  int societyTransferFeeInr,  double maintenanceRatePsfMonth,  Map<String, int> advanceMaintenanceMonths,  int legalFeesInr,  double loanProcessingPct,  MortgageStampDuty mortgageStampDuty,  double preEmiAvgDisbursedFraction,  Map<String, int> interiorsInr,  List<RenovationBand> renovationPsfByAge,  Map<String, double> defaultCarpetSqft,  double builtupToCarpetRatio,  LoanAssumptions loan,  FlagThresholds flagThresholds,  WizardDefaults wizardDefaults,  List<SourceLink> sources,  Map<String, Object?>? categories)  $default,) {final _that = this;
switch (_that) {
case _RateProfile():
return $default(_that.id,_that.city,_that.version,_that.asOf,_that.isBundled,_that.stampDutyPct,_that.includesMetroCess,_that.registrationPct,_that.registrationCapInr,_that.gstPct,_that.affordableHousing,_that.tds,_that.brokeragePctDefault,_that.serviceGstPct,_that.societyTransferFeeInr,_that.maintenanceRatePsfMonth,_that.advanceMaintenanceMonths,_that.legalFeesInr,_that.loanProcessingPct,_that.mortgageStampDuty,_that.preEmiAvgDisbursedFraction,_that.interiorsInr,_that.renovationPsfByAge,_that.defaultCarpetSqft,_that.builtupToCarpetRatio,_that.loan,_that.flagThresholds,_that.wizardDefaults,_that.sources,_that.categories);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String city,  int version,  String asOf,  bool isBundled,  Map<String, double> stampDutyPct,  bool includesMetroCess,  double registrationPct,  int registrationCapInr,  Map<String, double> gstPct,  AffordableHousing affordableHousing,  TdsRule tds,  double brokeragePctDefault,  double serviceGstPct,  int societyTransferFeeInr,  double maintenanceRatePsfMonth,  Map<String, int> advanceMaintenanceMonths,  int legalFeesInr,  double loanProcessingPct,  MortgageStampDuty mortgageStampDuty,  double preEmiAvgDisbursedFraction,  Map<String, int> interiorsInr,  List<RenovationBand> renovationPsfByAge,  Map<String, double> defaultCarpetSqft,  double builtupToCarpetRatio,  LoanAssumptions loan,  FlagThresholds flagThresholds,  WizardDefaults wizardDefaults,  List<SourceLink> sources,  Map<String, Object?>? categories)?  $default,) {final _that = this;
switch (_that) {
case _RateProfile() when $default != null:
return $default(_that.id,_that.city,_that.version,_that.asOf,_that.isBundled,_that.stampDutyPct,_that.includesMetroCess,_that.registrationPct,_that.registrationCapInr,_that.gstPct,_that.affordableHousing,_that.tds,_that.brokeragePctDefault,_that.serviceGstPct,_that.societyTransferFeeInr,_that.maintenanceRatePsfMonth,_that.advanceMaintenanceMonths,_that.legalFeesInr,_that.loanProcessingPct,_that.mortgageStampDuty,_that.preEmiAvgDisbursedFraction,_that.interiorsInr,_that.renovationPsfByAge,_that.defaultCarpetSqft,_that.builtupToCarpetRatio,_that.loan,_that.flagThresholds,_that.wizardDefaults,_that.sources,_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RateProfile extends RateProfile {
  const _RateProfile({required this.id, required this.city, required this.version, required this.asOf, this.isBundled = false, required final  Map<String, double> stampDutyPct, this.includesMetroCess = false, required this.registrationPct, required this.registrationCapInr, required final  Map<String, double> gstPct, required this.affordableHousing, required this.tds, required this.brokeragePctDefault, required this.serviceGstPct, required this.societyTransferFeeInr, required this.maintenanceRatePsfMonth, required final  Map<String, int> advanceMaintenanceMonths, required this.legalFeesInr, required this.loanProcessingPct, required this.mortgageStampDuty, required this.preEmiAvgDisbursedFraction, required final  Map<String, int> interiorsInr, required final  List<RenovationBand> renovationPsfByAge, required final  Map<String, double> defaultCarpetSqft, required this.builtupToCarpetRatio, required this.loan, required this.flagThresholds, this.wizardDefaults = const WizardDefaults(), final  List<SourceLink> sources = const <SourceLink>[], final  Map<String, Object?>? categories}): _stampDutyPct = stampDutyPct,_gstPct = gstPct,_advanceMaintenanceMonths = advanceMaintenanceMonths,_interiorsInr = interiorsInr,_renovationPsfByAge = renovationPsfByAge,_defaultCarpetSqft = defaultCarpetSqft,_sources = sources,_categories = categories,super._();
  factory _RateProfile.fromJson(Map<String, dynamic> json) => _$RateProfileFromJson(json);

@override final  String id;
@override final  String city;
@override final  int version;
@override final  String asOf;
@override@JsonKey() final  bool isBundled;
 final  Map<String, double> _stampDutyPct;
@override Map<String, double> get stampDutyPct {
  if (_stampDutyPct is EqualUnmodifiableMapView) return _stampDutyPct;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_stampDutyPct);
}

@override@JsonKey() final  bool includesMetroCess;
@override final  double registrationPct;
@override final  int registrationCapInr;
 final  Map<String, double> _gstPct;
@override Map<String, double> get gstPct {
  if (_gstPct is EqualUnmodifiableMapView) return _gstPct;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_gstPct);
}

@override final  AffordableHousing affordableHousing;
@override final  TdsRule tds;
@override final  double brokeragePctDefault;
@override final  double serviceGstPct;
@override final  int societyTransferFeeInr;
@override final  double maintenanceRatePsfMonth;
 final  Map<String, int> _advanceMaintenanceMonths;
@override Map<String, int> get advanceMaintenanceMonths {
  if (_advanceMaintenanceMonths is EqualUnmodifiableMapView) return _advanceMaintenanceMonths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_advanceMaintenanceMonths);
}

@override final  int legalFeesInr;
@override final  double loanProcessingPct;
@override final  MortgageStampDuty mortgageStampDuty;
@override final  double preEmiAvgDisbursedFraction;
 final  Map<String, int> _interiorsInr;
@override Map<String, int> get interiorsInr {
  if (_interiorsInr is EqualUnmodifiableMapView) return _interiorsInr;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_interiorsInr);
}

 final  List<RenovationBand> _renovationPsfByAge;
@override List<RenovationBand> get renovationPsfByAge {
  if (_renovationPsfByAge is EqualUnmodifiableListView) return _renovationPsfByAge;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_renovationPsfByAge);
}

 final  Map<String, double> _defaultCarpetSqft;
@override Map<String, double> get defaultCarpetSqft {
  if (_defaultCarpetSqft is EqualUnmodifiableMapView) return _defaultCarpetSqft;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_defaultCarpetSqft);
}

@override final  double builtupToCarpetRatio;
@override final  LoanAssumptions loan;
@override final  FlagThresholds flagThresholds;
@override@JsonKey() final  WizardDefaults wizardDefaults;
 final  List<SourceLink> _sources;
@override@JsonKey() List<SourceLink> get sources {
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sources);
}

/// Per-category overrides (SPEC §10). Absent means "flat only"; flat
/// values live at the top level.
 final  Map<String, Object?>? _categories;
/// Per-category overrides (SPEC §10). Absent means "flat only"; flat
/// values live at the top level.
@override Map<String, Object?>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableMapView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RateProfileCopyWith<_RateProfile> get copyWith => __$RateProfileCopyWithImpl<_RateProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RateProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RateProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.version, version) || other.version == version)&&(identical(other.asOf, asOf) || other.asOf == asOf)&&(identical(other.isBundled, isBundled) || other.isBundled == isBundled)&&const DeepCollectionEquality().equals(other._stampDutyPct, _stampDutyPct)&&(identical(other.includesMetroCess, includesMetroCess) || other.includesMetroCess == includesMetroCess)&&(identical(other.registrationPct, registrationPct) || other.registrationPct == registrationPct)&&(identical(other.registrationCapInr, registrationCapInr) || other.registrationCapInr == registrationCapInr)&&const DeepCollectionEquality().equals(other._gstPct, _gstPct)&&(identical(other.affordableHousing, affordableHousing) || other.affordableHousing == affordableHousing)&&(identical(other.tds, tds) || other.tds == tds)&&(identical(other.brokeragePctDefault, brokeragePctDefault) || other.brokeragePctDefault == brokeragePctDefault)&&(identical(other.serviceGstPct, serviceGstPct) || other.serviceGstPct == serviceGstPct)&&(identical(other.societyTransferFeeInr, societyTransferFeeInr) || other.societyTransferFeeInr == societyTransferFeeInr)&&(identical(other.maintenanceRatePsfMonth, maintenanceRatePsfMonth) || other.maintenanceRatePsfMonth == maintenanceRatePsfMonth)&&const DeepCollectionEquality().equals(other._advanceMaintenanceMonths, _advanceMaintenanceMonths)&&(identical(other.legalFeesInr, legalFeesInr) || other.legalFeesInr == legalFeesInr)&&(identical(other.loanProcessingPct, loanProcessingPct) || other.loanProcessingPct == loanProcessingPct)&&(identical(other.mortgageStampDuty, mortgageStampDuty) || other.mortgageStampDuty == mortgageStampDuty)&&(identical(other.preEmiAvgDisbursedFraction, preEmiAvgDisbursedFraction) || other.preEmiAvgDisbursedFraction == preEmiAvgDisbursedFraction)&&const DeepCollectionEquality().equals(other._interiorsInr, _interiorsInr)&&const DeepCollectionEquality().equals(other._renovationPsfByAge, _renovationPsfByAge)&&const DeepCollectionEquality().equals(other._defaultCarpetSqft, _defaultCarpetSqft)&&(identical(other.builtupToCarpetRatio, builtupToCarpetRatio) || other.builtupToCarpetRatio == builtupToCarpetRatio)&&(identical(other.loan, loan) || other.loan == loan)&&(identical(other.flagThresholds, flagThresholds) || other.flagThresholds == flagThresholds)&&(identical(other.wizardDefaults, wizardDefaults) || other.wizardDefaults == wizardDefaults)&&const DeepCollectionEquality().equals(other._sources, _sources)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,city,version,asOf,isBundled,const DeepCollectionEquality().hash(_stampDutyPct),includesMetroCess,registrationPct,registrationCapInr,const DeepCollectionEquality().hash(_gstPct),affordableHousing,tds,brokeragePctDefault,serviceGstPct,societyTransferFeeInr,maintenanceRatePsfMonth,const DeepCollectionEquality().hash(_advanceMaintenanceMonths),legalFeesInr,loanProcessingPct,mortgageStampDuty,preEmiAvgDisbursedFraction,const DeepCollectionEquality().hash(_interiorsInr),const DeepCollectionEquality().hash(_renovationPsfByAge),const DeepCollectionEquality().hash(_defaultCarpetSqft),builtupToCarpetRatio,loan,flagThresholds,wizardDefaults,const DeepCollectionEquality().hash(_sources),const DeepCollectionEquality().hash(_categories)]);

@override
String toString() {
  return 'RateProfile(id: $id, city: $city, version: $version, asOf: $asOf, isBundled: $isBundled, stampDutyPct: $stampDutyPct, includesMetroCess: $includesMetroCess, registrationPct: $registrationPct, registrationCapInr: $registrationCapInr, gstPct: $gstPct, affordableHousing: $affordableHousing, tds: $tds, brokeragePctDefault: $brokeragePctDefault, serviceGstPct: $serviceGstPct, societyTransferFeeInr: $societyTransferFeeInr, maintenanceRatePsfMonth: $maintenanceRatePsfMonth, advanceMaintenanceMonths: $advanceMaintenanceMonths, legalFeesInr: $legalFeesInr, loanProcessingPct: $loanProcessingPct, mortgageStampDuty: $mortgageStampDuty, preEmiAvgDisbursedFraction: $preEmiAvgDisbursedFraction, interiorsInr: $interiorsInr, renovationPsfByAge: $renovationPsfByAge, defaultCarpetSqft: $defaultCarpetSqft, builtupToCarpetRatio: $builtupToCarpetRatio, loan: $loan, flagThresholds: $flagThresholds, wizardDefaults: $wizardDefaults, sources: $sources, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$RateProfileCopyWith<$Res> implements $RateProfileCopyWith<$Res> {
  factory _$RateProfileCopyWith(_RateProfile value, $Res Function(_RateProfile) _then) = __$RateProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String city, int version, String asOf, bool isBundled, Map<String, double> stampDutyPct, bool includesMetroCess, double registrationPct, int registrationCapInr, Map<String, double> gstPct, AffordableHousing affordableHousing, TdsRule tds, double brokeragePctDefault, double serviceGstPct, int societyTransferFeeInr, double maintenanceRatePsfMonth, Map<String, int> advanceMaintenanceMonths, int legalFeesInr, double loanProcessingPct, MortgageStampDuty mortgageStampDuty, double preEmiAvgDisbursedFraction, Map<String, int> interiorsInr, List<RenovationBand> renovationPsfByAge, Map<String, double> defaultCarpetSqft, double builtupToCarpetRatio, LoanAssumptions loan, FlagThresholds flagThresholds, WizardDefaults wizardDefaults, List<SourceLink> sources, Map<String, Object?>? categories
});


@override $AffordableHousingCopyWith<$Res> get affordableHousing;@override $TdsRuleCopyWith<$Res> get tds;@override $MortgageStampDutyCopyWith<$Res> get mortgageStampDuty;@override $LoanAssumptionsCopyWith<$Res> get loan;@override $FlagThresholdsCopyWith<$Res> get flagThresholds;@override $WizardDefaultsCopyWith<$Res> get wizardDefaults;

}
/// @nodoc
class __$RateProfileCopyWithImpl<$Res>
    implements _$RateProfileCopyWith<$Res> {
  __$RateProfileCopyWithImpl(this._self, this._then);

  final _RateProfile _self;
  final $Res Function(_RateProfile) _then;

/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? city = null,Object? version = null,Object? asOf = null,Object? isBundled = null,Object? stampDutyPct = null,Object? includesMetroCess = null,Object? registrationPct = null,Object? registrationCapInr = null,Object? gstPct = null,Object? affordableHousing = null,Object? tds = null,Object? brokeragePctDefault = null,Object? serviceGstPct = null,Object? societyTransferFeeInr = null,Object? maintenanceRatePsfMonth = null,Object? advanceMaintenanceMonths = null,Object? legalFeesInr = null,Object? loanProcessingPct = null,Object? mortgageStampDuty = null,Object? preEmiAvgDisbursedFraction = null,Object? interiorsInr = null,Object? renovationPsfByAge = null,Object? defaultCarpetSqft = null,Object? builtupToCarpetRatio = null,Object? loan = null,Object? flagThresholds = null,Object? wizardDefaults = null,Object? sources = null,Object? categories = freezed,}) {
  return _then(_RateProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,asOf: null == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String,isBundled: null == isBundled ? _self.isBundled : isBundled // ignore: cast_nullable_to_non_nullable
as bool,stampDutyPct: null == stampDutyPct ? _self._stampDutyPct : stampDutyPct // ignore: cast_nullable_to_non_nullable
as Map<String, double>,includesMetroCess: null == includesMetroCess ? _self.includesMetroCess : includesMetroCess // ignore: cast_nullable_to_non_nullable
as bool,registrationPct: null == registrationPct ? _self.registrationPct : registrationPct // ignore: cast_nullable_to_non_nullable
as double,registrationCapInr: null == registrationCapInr ? _self.registrationCapInr : registrationCapInr // ignore: cast_nullable_to_non_nullable
as int,gstPct: null == gstPct ? _self._gstPct : gstPct // ignore: cast_nullable_to_non_nullable
as Map<String, double>,affordableHousing: null == affordableHousing ? _self.affordableHousing : affordableHousing // ignore: cast_nullable_to_non_nullable
as AffordableHousing,tds: null == tds ? _self.tds : tds // ignore: cast_nullable_to_non_nullable
as TdsRule,brokeragePctDefault: null == brokeragePctDefault ? _self.brokeragePctDefault : brokeragePctDefault // ignore: cast_nullable_to_non_nullable
as double,serviceGstPct: null == serviceGstPct ? _self.serviceGstPct : serviceGstPct // ignore: cast_nullable_to_non_nullable
as double,societyTransferFeeInr: null == societyTransferFeeInr ? _self.societyTransferFeeInr : societyTransferFeeInr // ignore: cast_nullable_to_non_nullable
as int,maintenanceRatePsfMonth: null == maintenanceRatePsfMonth ? _self.maintenanceRatePsfMonth : maintenanceRatePsfMonth // ignore: cast_nullable_to_non_nullable
as double,advanceMaintenanceMonths: null == advanceMaintenanceMonths ? _self._advanceMaintenanceMonths : advanceMaintenanceMonths // ignore: cast_nullable_to_non_nullable
as Map<String, int>,legalFeesInr: null == legalFeesInr ? _self.legalFeesInr : legalFeesInr // ignore: cast_nullable_to_non_nullable
as int,loanProcessingPct: null == loanProcessingPct ? _self.loanProcessingPct : loanProcessingPct // ignore: cast_nullable_to_non_nullable
as double,mortgageStampDuty: null == mortgageStampDuty ? _self.mortgageStampDuty : mortgageStampDuty // ignore: cast_nullable_to_non_nullable
as MortgageStampDuty,preEmiAvgDisbursedFraction: null == preEmiAvgDisbursedFraction ? _self.preEmiAvgDisbursedFraction : preEmiAvgDisbursedFraction // ignore: cast_nullable_to_non_nullable
as double,interiorsInr: null == interiorsInr ? _self._interiorsInr : interiorsInr // ignore: cast_nullable_to_non_nullable
as Map<String, int>,renovationPsfByAge: null == renovationPsfByAge ? _self._renovationPsfByAge : renovationPsfByAge // ignore: cast_nullable_to_non_nullable
as List<RenovationBand>,defaultCarpetSqft: null == defaultCarpetSqft ? _self._defaultCarpetSqft : defaultCarpetSqft // ignore: cast_nullable_to_non_nullable
as Map<String, double>,builtupToCarpetRatio: null == builtupToCarpetRatio ? _self.builtupToCarpetRatio : builtupToCarpetRatio // ignore: cast_nullable_to_non_nullable
as double,loan: null == loan ? _self.loan : loan // ignore: cast_nullable_to_non_nullable
as LoanAssumptions,flagThresholds: null == flagThresholds ? _self.flagThresholds : flagThresholds // ignore: cast_nullable_to_non_nullable
as FlagThresholds,wizardDefaults: null == wizardDefaults ? _self.wizardDefaults : wizardDefaults // ignore: cast_nullable_to_non_nullable
as WizardDefaults,sources: null == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<SourceLink>,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}

/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AffordableHousingCopyWith<$Res> get affordableHousing {
  
  return $AffordableHousingCopyWith<$Res>(_self.affordableHousing, (value) {
    return _then(_self.copyWith(affordableHousing: value));
  });
}/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TdsRuleCopyWith<$Res> get tds {
  
  return $TdsRuleCopyWith<$Res>(_self.tds, (value) {
    return _then(_self.copyWith(tds: value));
  });
}/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MortgageStampDutyCopyWith<$Res> get mortgageStampDuty {
  
  return $MortgageStampDutyCopyWith<$Res>(_self.mortgageStampDuty, (value) {
    return _then(_self.copyWith(mortgageStampDuty: value));
  });
}/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoanAssumptionsCopyWith<$Res> get loan {
  
  return $LoanAssumptionsCopyWith<$Res>(_self.loan, (value) {
    return _then(_self.copyWith(loan: value));
  });
}/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlagThresholdsCopyWith<$Res> get flagThresholds {
  
  return $FlagThresholdsCopyWith<$Res>(_self.flagThresholds, (value) {
    return _then(_self.copyWith(flagThresholds: value));
  });
}/// Create a copy of RateProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WizardDefaultsCopyWith<$Res> get wizardDefaults {
  
  return $WizardDefaultsCopyWith<$Res>(_self.wizardDefaults, (value) {
    return _then(_self.copyWith(wizardDefaults: value));
  });
}
}


/// @nodoc
mixin _$AffordableHousing {

 double get maxCarpetSqm; int get maxValueInr;
/// Create a copy of AffordableHousing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AffordableHousingCopyWith<AffordableHousing> get copyWith => _$AffordableHousingCopyWithImpl<AffordableHousing>(this as AffordableHousing, _$identity);

  /// Serializes this AffordableHousing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AffordableHousing&&(identical(other.maxCarpetSqm, maxCarpetSqm) || other.maxCarpetSqm == maxCarpetSqm)&&(identical(other.maxValueInr, maxValueInr) || other.maxValueInr == maxValueInr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxCarpetSqm,maxValueInr);

@override
String toString() {
  return 'AffordableHousing(maxCarpetSqm: $maxCarpetSqm, maxValueInr: $maxValueInr)';
}


}

/// @nodoc
abstract mixin class $AffordableHousingCopyWith<$Res>  {
  factory $AffordableHousingCopyWith(AffordableHousing value, $Res Function(AffordableHousing) _then) = _$AffordableHousingCopyWithImpl;
@useResult
$Res call({
 double maxCarpetSqm, int maxValueInr
});




}
/// @nodoc
class _$AffordableHousingCopyWithImpl<$Res>
    implements $AffordableHousingCopyWith<$Res> {
  _$AffordableHousingCopyWithImpl(this._self, this._then);

  final AffordableHousing _self;
  final $Res Function(AffordableHousing) _then;

/// Create a copy of AffordableHousing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxCarpetSqm = null,Object? maxValueInr = null,}) {
  return _then(_self.copyWith(
maxCarpetSqm: null == maxCarpetSqm ? _self.maxCarpetSqm : maxCarpetSqm // ignore: cast_nullable_to_non_nullable
as double,maxValueInr: null == maxValueInr ? _self.maxValueInr : maxValueInr // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AffordableHousing].
extension AffordableHousingPatterns on AffordableHousing {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AffordableHousing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AffordableHousing() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AffordableHousing value)  $default,){
final _that = this;
switch (_that) {
case _AffordableHousing():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AffordableHousing value)?  $default,){
final _that = this;
switch (_that) {
case _AffordableHousing() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double maxCarpetSqm,  int maxValueInr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AffordableHousing() when $default != null:
return $default(_that.maxCarpetSqm,_that.maxValueInr);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double maxCarpetSqm,  int maxValueInr)  $default,) {final _that = this;
switch (_that) {
case _AffordableHousing():
return $default(_that.maxCarpetSqm,_that.maxValueInr);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double maxCarpetSqm,  int maxValueInr)?  $default,) {final _that = this;
switch (_that) {
case _AffordableHousing() when $default != null:
return $default(_that.maxCarpetSqm,_that.maxValueInr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AffordableHousing implements AffordableHousing {
  const _AffordableHousing({required this.maxCarpetSqm, required this.maxValueInr});
  factory _AffordableHousing.fromJson(Map<String, dynamic> json) => _$AffordableHousingFromJson(json);

@override final  double maxCarpetSqm;
@override final  int maxValueInr;

/// Create a copy of AffordableHousing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AffordableHousingCopyWith<_AffordableHousing> get copyWith => __$AffordableHousingCopyWithImpl<_AffordableHousing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AffordableHousingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AffordableHousing&&(identical(other.maxCarpetSqm, maxCarpetSqm) || other.maxCarpetSqm == maxCarpetSqm)&&(identical(other.maxValueInr, maxValueInr) || other.maxValueInr == maxValueInr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxCarpetSqm,maxValueInr);

@override
String toString() {
  return 'AffordableHousing(maxCarpetSqm: $maxCarpetSqm, maxValueInr: $maxValueInr)';
}


}

/// @nodoc
abstract mixin class _$AffordableHousingCopyWith<$Res> implements $AffordableHousingCopyWith<$Res> {
  factory _$AffordableHousingCopyWith(_AffordableHousing value, $Res Function(_AffordableHousing) _then) = __$AffordableHousingCopyWithImpl;
@override @useResult
$Res call({
 double maxCarpetSqm, int maxValueInr
});




}
/// @nodoc
class __$AffordableHousingCopyWithImpl<$Res>
    implements _$AffordableHousingCopyWith<$Res> {
  __$AffordableHousingCopyWithImpl(this._self, this._then);

  final _AffordableHousing _self;
  final $Res Function(_AffordableHousing) _then;

/// Create a copy of AffordableHousing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxCarpetSqm = null,Object? maxValueInr = null,}) {
  return _then(_AffordableHousing(
maxCarpetSqm: null == maxCarpetSqm ? _self.maxCarpetSqm : maxCarpetSqm // ignore: cast_nullable_to_non_nullable
as double,maxValueInr: null == maxValueInr ? _self.maxValueInr : maxValueInr // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TdsRule {

 double get pct; int get thresholdInr;
/// Create a copy of TdsRule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TdsRuleCopyWith<TdsRule> get copyWith => _$TdsRuleCopyWithImpl<TdsRule>(this as TdsRule, _$identity);

  /// Serializes this TdsRule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TdsRule&&(identical(other.pct, pct) || other.pct == pct)&&(identical(other.thresholdInr, thresholdInr) || other.thresholdInr == thresholdInr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pct,thresholdInr);

@override
String toString() {
  return 'TdsRule(pct: $pct, thresholdInr: $thresholdInr)';
}


}

/// @nodoc
abstract mixin class $TdsRuleCopyWith<$Res>  {
  factory $TdsRuleCopyWith(TdsRule value, $Res Function(TdsRule) _then) = _$TdsRuleCopyWithImpl;
@useResult
$Res call({
 double pct, int thresholdInr
});




}
/// @nodoc
class _$TdsRuleCopyWithImpl<$Res>
    implements $TdsRuleCopyWith<$Res> {
  _$TdsRuleCopyWithImpl(this._self, this._then);

  final TdsRule _self;
  final $Res Function(TdsRule) _then;

/// Create a copy of TdsRule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pct = null,Object? thresholdInr = null,}) {
  return _then(_self.copyWith(
pct: null == pct ? _self.pct : pct // ignore: cast_nullable_to_non_nullable
as double,thresholdInr: null == thresholdInr ? _self.thresholdInr : thresholdInr // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TdsRule].
extension TdsRulePatterns on TdsRule {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TdsRule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TdsRule() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TdsRule value)  $default,){
final _that = this;
switch (_that) {
case _TdsRule():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TdsRule value)?  $default,){
final _that = this;
switch (_that) {
case _TdsRule() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double pct,  int thresholdInr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TdsRule() when $default != null:
return $default(_that.pct,_that.thresholdInr);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double pct,  int thresholdInr)  $default,) {final _that = this;
switch (_that) {
case _TdsRule():
return $default(_that.pct,_that.thresholdInr);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double pct,  int thresholdInr)?  $default,) {final _that = this;
switch (_that) {
case _TdsRule() when $default != null:
return $default(_that.pct,_that.thresholdInr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TdsRule implements TdsRule {
  const _TdsRule({required this.pct, required this.thresholdInr});
  factory _TdsRule.fromJson(Map<String, dynamic> json) => _$TdsRuleFromJson(json);

@override final  double pct;
@override final  int thresholdInr;

/// Create a copy of TdsRule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TdsRuleCopyWith<_TdsRule> get copyWith => __$TdsRuleCopyWithImpl<_TdsRule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TdsRuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TdsRule&&(identical(other.pct, pct) || other.pct == pct)&&(identical(other.thresholdInr, thresholdInr) || other.thresholdInr == thresholdInr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pct,thresholdInr);

@override
String toString() {
  return 'TdsRule(pct: $pct, thresholdInr: $thresholdInr)';
}


}

/// @nodoc
abstract mixin class _$TdsRuleCopyWith<$Res> implements $TdsRuleCopyWith<$Res> {
  factory _$TdsRuleCopyWith(_TdsRule value, $Res Function(_TdsRule) _then) = __$TdsRuleCopyWithImpl;
@override @useResult
$Res call({
 double pct, int thresholdInr
});




}
/// @nodoc
class __$TdsRuleCopyWithImpl<$Res>
    implements _$TdsRuleCopyWith<$Res> {
  __$TdsRuleCopyWithImpl(this._self, this._then);

  final _TdsRule _self;
  final $Res Function(_TdsRule) _then;

/// Create a copy of TdsRule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pct = null,Object? thresholdInr = null,}) {
  return _then(_TdsRule(
pct: null == pct ? _self.pct : pct // ignore: cast_nullable_to_non_nullable
as double,thresholdInr: null == thresholdInr ? _self.thresholdInr : thresholdInr // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MortgageStampDuty {

 double get pct; int get capInr;
/// Create a copy of MortgageStampDuty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MortgageStampDutyCopyWith<MortgageStampDuty> get copyWith => _$MortgageStampDutyCopyWithImpl<MortgageStampDuty>(this as MortgageStampDuty, _$identity);

  /// Serializes this MortgageStampDuty to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MortgageStampDuty&&(identical(other.pct, pct) || other.pct == pct)&&(identical(other.capInr, capInr) || other.capInr == capInr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pct,capInr);

@override
String toString() {
  return 'MortgageStampDuty(pct: $pct, capInr: $capInr)';
}


}

/// @nodoc
abstract mixin class $MortgageStampDutyCopyWith<$Res>  {
  factory $MortgageStampDutyCopyWith(MortgageStampDuty value, $Res Function(MortgageStampDuty) _then) = _$MortgageStampDutyCopyWithImpl;
@useResult
$Res call({
 double pct, int capInr
});




}
/// @nodoc
class _$MortgageStampDutyCopyWithImpl<$Res>
    implements $MortgageStampDutyCopyWith<$Res> {
  _$MortgageStampDutyCopyWithImpl(this._self, this._then);

  final MortgageStampDuty _self;
  final $Res Function(MortgageStampDuty) _then;

/// Create a copy of MortgageStampDuty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pct = null,Object? capInr = null,}) {
  return _then(_self.copyWith(
pct: null == pct ? _self.pct : pct // ignore: cast_nullable_to_non_nullable
as double,capInr: null == capInr ? _self.capInr : capInr // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MortgageStampDuty].
extension MortgageStampDutyPatterns on MortgageStampDuty {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MortgageStampDuty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MortgageStampDuty() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MortgageStampDuty value)  $default,){
final _that = this;
switch (_that) {
case _MortgageStampDuty():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MortgageStampDuty value)?  $default,){
final _that = this;
switch (_that) {
case _MortgageStampDuty() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double pct,  int capInr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MortgageStampDuty() when $default != null:
return $default(_that.pct,_that.capInr);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double pct,  int capInr)  $default,) {final _that = this;
switch (_that) {
case _MortgageStampDuty():
return $default(_that.pct,_that.capInr);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double pct,  int capInr)?  $default,) {final _that = this;
switch (_that) {
case _MortgageStampDuty() when $default != null:
return $default(_that.pct,_that.capInr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MortgageStampDuty implements MortgageStampDuty {
  const _MortgageStampDuty({required this.pct, required this.capInr});
  factory _MortgageStampDuty.fromJson(Map<String, dynamic> json) => _$MortgageStampDutyFromJson(json);

@override final  double pct;
@override final  int capInr;

/// Create a copy of MortgageStampDuty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MortgageStampDutyCopyWith<_MortgageStampDuty> get copyWith => __$MortgageStampDutyCopyWithImpl<_MortgageStampDuty>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MortgageStampDutyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MortgageStampDuty&&(identical(other.pct, pct) || other.pct == pct)&&(identical(other.capInr, capInr) || other.capInr == capInr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pct,capInr);

@override
String toString() {
  return 'MortgageStampDuty(pct: $pct, capInr: $capInr)';
}


}

/// @nodoc
abstract mixin class _$MortgageStampDutyCopyWith<$Res> implements $MortgageStampDutyCopyWith<$Res> {
  factory _$MortgageStampDutyCopyWith(_MortgageStampDuty value, $Res Function(_MortgageStampDuty) _then) = __$MortgageStampDutyCopyWithImpl;
@override @useResult
$Res call({
 double pct, int capInr
});




}
/// @nodoc
class __$MortgageStampDutyCopyWithImpl<$Res>
    implements _$MortgageStampDutyCopyWith<$Res> {
  __$MortgageStampDutyCopyWithImpl(this._self, this._then);

  final _MortgageStampDuty _self;
  final $Res Function(_MortgageStampDuty) _then;

/// Create a copy of MortgageStampDuty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pct = null,Object? capInr = null,}) {
  return _then(_MortgageStampDuty(
pct: null == pct ? _self.pct : pct // ignore: cast_nullable_to_non_nullable
as double,capInr: null == capInr ? _self.capInr : capInr // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RenovationBand {

 int get minAge; int get maxAge; double get psf;
/// Create a copy of RenovationBand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RenovationBandCopyWith<RenovationBand> get copyWith => _$RenovationBandCopyWithImpl<RenovationBand>(this as RenovationBand, _$identity);

  /// Serializes this RenovationBand to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RenovationBand&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.psf, psf) || other.psf == psf));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minAge,maxAge,psf);

@override
String toString() {
  return 'RenovationBand(minAge: $minAge, maxAge: $maxAge, psf: $psf)';
}


}

/// @nodoc
abstract mixin class $RenovationBandCopyWith<$Res>  {
  factory $RenovationBandCopyWith(RenovationBand value, $Res Function(RenovationBand) _then) = _$RenovationBandCopyWithImpl;
@useResult
$Res call({
 int minAge, int maxAge, double psf
});




}
/// @nodoc
class _$RenovationBandCopyWithImpl<$Res>
    implements $RenovationBandCopyWith<$Res> {
  _$RenovationBandCopyWithImpl(this._self, this._then);

  final RenovationBand _self;
  final $Res Function(RenovationBand) _then;

/// Create a copy of RenovationBand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minAge = null,Object? maxAge = null,Object? psf = null,}) {
  return _then(_self.copyWith(
minAge: null == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int,maxAge: null == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int,psf: null == psf ? _self.psf : psf // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [RenovationBand].
extension RenovationBandPatterns on RenovationBand {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RenovationBand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RenovationBand() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RenovationBand value)  $default,){
final _that = this;
switch (_that) {
case _RenovationBand():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RenovationBand value)?  $default,){
final _that = this;
switch (_that) {
case _RenovationBand() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int minAge,  int maxAge,  double psf)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RenovationBand() when $default != null:
return $default(_that.minAge,_that.maxAge,_that.psf);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int minAge,  int maxAge,  double psf)  $default,) {final _that = this;
switch (_that) {
case _RenovationBand():
return $default(_that.minAge,_that.maxAge,_that.psf);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int minAge,  int maxAge,  double psf)?  $default,) {final _that = this;
switch (_that) {
case _RenovationBand() when $default != null:
return $default(_that.minAge,_that.maxAge,_that.psf);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RenovationBand implements RenovationBand {
  const _RenovationBand({required this.minAge, required this.maxAge, required this.psf});
  factory _RenovationBand.fromJson(Map<String, dynamic> json) => _$RenovationBandFromJson(json);

@override final  int minAge;
@override final  int maxAge;
@override final  double psf;

/// Create a copy of RenovationBand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RenovationBandCopyWith<_RenovationBand> get copyWith => __$RenovationBandCopyWithImpl<_RenovationBand>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RenovationBandToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RenovationBand&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.psf, psf) || other.psf == psf));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minAge,maxAge,psf);

@override
String toString() {
  return 'RenovationBand(minAge: $minAge, maxAge: $maxAge, psf: $psf)';
}


}

/// @nodoc
abstract mixin class _$RenovationBandCopyWith<$Res> implements $RenovationBandCopyWith<$Res> {
  factory _$RenovationBandCopyWith(_RenovationBand value, $Res Function(_RenovationBand) _then) = __$RenovationBandCopyWithImpl;
@override @useResult
$Res call({
 int minAge, int maxAge, double psf
});




}
/// @nodoc
class __$RenovationBandCopyWithImpl<$Res>
    implements _$RenovationBandCopyWith<$Res> {
  __$RenovationBandCopyWithImpl(this._self, this._then);

  final _RenovationBand _self;
  final $Res Function(_RenovationBand) _then;

/// Create a copy of RenovationBand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minAge = null,Object? maxAge = null,Object? psf = null,}) {
  return _then(_RenovationBand(
minAge: null == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int,maxAge: null == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int,psf: null == psf ? _self.psf : psf // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$LtvSlab {

 int? get maxValueInr; double get ltvPct;
/// Create a copy of LtvSlab
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LtvSlabCopyWith<LtvSlab> get copyWith => _$LtvSlabCopyWithImpl<LtvSlab>(this as LtvSlab, _$identity);

  /// Serializes this LtvSlab to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LtvSlab&&(identical(other.maxValueInr, maxValueInr) || other.maxValueInr == maxValueInr)&&(identical(other.ltvPct, ltvPct) || other.ltvPct == ltvPct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxValueInr,ltvPct);

@override
String toString() {
  return 'LtvSlab(maxValueInr: $maxValueInr, ltvPct: $ltvPct)';
}


}

/// @nodoc
abstract mixin class $LtvSlabCopyWith<$Res>  {
  factory $LtvSlabCopyWith(LtvSlab value, $Res Function(LtvSlab) _then) = _$LtvSlabCopyWithImpl;
@useResult
$Res call({
 int? maxValueInr, double ltvPct
});




}
/// @nodoc
class _$LtvSlabCopyWithImpl<$Res>
    implements $LtvSlabCopyWith<$Res> {
  _$LtvSlabCopyWithImpl(this._self, this._then);

  final LtvSlab _self;
  final $Res Function(LtvSlab) _then;

/// Create a copy of LtvSlab
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxValueInr = freezed,Object? ltvPct = null,}) {
  return _then(_self.copyWith(
maxValueInr: freezed == maxValueInr ? _self.maxValueInr : maxValueInr // ignore: cast_nullable_to_non_nullable
as int?,ltvPct: null == ltvPct ? _self.ltvPct : ltvPct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LtvSlab].
extension LtvSlabPatterns on LtvSlab {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LtvSlab value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LtvSlab() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LtvSlab value)  $default,){
final _that = this;
switch (_that) {
case _LtvSlab():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LtvSlab value)?  $default,){
final _that = this;
switch (_that) {
case _LtvSlab() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? maxValueInr,  double ltvPct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LtvSlab() when $default != null:
return $default(_that.maxValueInr,_that.ltvPct);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? maxValueInr,  double ltvPct)  $default,) {final _that = this;
switch (_that) {
case _LtvSlab():
return $default(_that.maxValueInr,_that.ltvPct);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? maxValueInr,  double ltvPct)?  $default,) {final _that = this;
switch (_that) {
case _LtvSlab() when $default != null:
return $default(_that.maxValueInr,_that.ltvPct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LtvSlab implements LtvSlab {
  const _LtvSlab({this.maxValueInr, required this.ltvPct});
  factory _LtvSlab.fromJson(Map<String, dynamic> json) => _$LtvSlabFromJson(json);

@override final  int? maxValueInr;
@override final  double ltvPct;

/// Create a copy of LtvSlab
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LtvSlabCopyWith<_LtvSlab> get copyWith => __$LtvSlabCopyWithImpl<_LtvSlab>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LtvSlabToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LtvSlab&&(identical(other.maxValueInr, maxValueInr) || other.maxValueInr == maxValueInr)&&(identical(other.ltvPct, ltvPct) || other.ltvPct == ltvPct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxValueInr,ltvPct);

@override
String toString() {
  return 'LtvSlab(maxValueInr: $maxValueInr, ltvPct: $ltvPct)';
}


}

/// @nodoc
abstract mixin class _$LtvSlabCopyWith<$Res> implements $LtvSlabCopyWith<$Res> {
  factory _$LtvSlabCopyWith(_LtvSlab value, $Res Function(_LtvSlab) _then) = __$LtvSlabCopyWithImpl;
@override @useResult
$Res call({
 int? maxValueInr, double ltvPct
});




}
/// @nodoc
class __$LtvSlabCopyWithImpl<$Res>
    implements _$LtvSlabCopyWith<$Res> {
  __$LtvSlabCopyWithImpl(this._self, this._then);

  final _LtvSlab _self;
  final $Res Function(_LtvSlab) _then;

/// Create a copy of LtvSlab
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxValueInr = freezed,Object? ltvPct = null,}) {
  return _then(_LtvSlab(
maxValueInr: freezed == maxValueInr ? _self.maxValueInr : maxValueInr // ignore: cast_nullable_to_non_nullable
as int?,ltvPct: null == ltvPct ? _self.ltvPct : ltvPct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$LoanAssumptions {

 double get interestPct; double get foirPct; int get maxTenureYears; Map<String, int> get retirementAge; int get assumedBuildingLifeYears; int get buildingLifeBufferYears; double get valuationHaircutPct; List<LtvSlab> get ltvSlabs;
/// Create a copy of LoanAssumptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoanAssumptionsCopyWith<LoanAssumptions> get copyWith => _$LoanAssumptionsCopyWithImpl<LoanAssumptions>(this as LoanAssumptions, _$identity);

  /// Serializes this LoanAssumptions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoanAssumptions&&(identical(other.interestPct, interestPct) || other.interestPct == interestPct)&&(identical(other.foirPct, foirPct) || other.foirPct == foirPct)&&(identical(other.maxTenureYears, maxTenureYears) || other.maxTenureYears == maxTenureYears)&&const DeepCollectionEquality().equals(other.retirementAge, retirementAge)&&(identical(other.assumedBuildingLifeYears, assumedBuildingLifeYears) || other.assumedBuildingLifeYears == assumedBuildingLifeYears)&&(identical(other.buildingLifeBufferYears, buildingLifeBufferYears) || other.buildingLifeBufferYears == buildingLifeBufferYears)&&(identical(other.valuationHaircutPct, valuationHaircutPct) || other.valuationHaircutPct == valuationHaircutPct)&&const DeepCollectionEquality().equals(other.ltvSlabs, ltvSlabs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,interestPct,foirPct,maxTenureYears,const DeepCollectionEquality().hash(retirementAge),assumedBuildingLifeYears,buildingLifeBufferYears,valuationHaircutPct,const DeepCollectionEquality().hash(ltvSlabs));

@override
String toString() {
  return 'LoanAssumptions(interestPct: $interestPct, foirPct: $foirPct, maxTenureYears: $maxTenureYears, retirementAge: $retirementAge, assumedBuildingLifeYears: $assumedBuildingLifeYears, buildingLifeBufferYears: $buildingLifeBufferYears, valuationHaircutPct: $valuationHaircutPct, ltvSlabs: $ltvSlabs)';
}


}

/// @nodoc
abstract mixin class $LoanAssumptionsCopyWith<$Res>  {
  factory $LoanAssumptionsCopyWith(LoanAssumptions value, $Res Function(LoanAssumptions) _then) = _$LoanAssumptionsCopyWithImpl;
@useResult
$Res call({
 double interestPct, double foirPct, int maxTenureYears, Map<String, int> retirementAge, int assumedBuildingLifeYears, int buildingLifeBufferYears, double valuationHaircutPct, List<LtvSlab> ltvSlabs
});




}
/// @nodoc
class _$LoanAssumptionsCopyWithImpl<$Res>
    implements $LoanAssumptionsCopyWith<$Res> {
  _$LoanAssumptionsCopyWithImpl(this._self, this._then);

  final LoanAssumptions _self;
  final $Res Function(LoanAssumptions) _then;

/// Create a copy of LoanAssumptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? interestPct = null,Object? foirPct = null,Object? maxTenureYears = null,Object? retirementAge = null,Object? assumedBuildingLifeYears = null,Object? buildingLifeBufferYears = null,Object? valuationHaircutPct = null,Object? ltvSlabs = null,}) {
  return _then(_self.copyWith(
interestPct: null == interestPct ? _self.interestPct : interestPct // ignore: cast_nullable_to_non_nullable
as double,foirPct: null == foirPct ? _self.foirPct : foirPct // ignore: cast_nullable_to_non_nullable
as double,maxTenureYears: null == maxTenureYears ? _self.maxTenureYears : maxTenureYears // ignore: cast_nullable_to_non_nullable
as int,retirementAge: null == retirementAge ? _self.retirementAge : retirementAge // ignore: cast_nullable_to_non_nullable
as Map<String, int>,assumedBuildingLifeYears: null == assumedBuildingLifeYears ? _self.assumedBuildingLifeYears : assumedBuildingLifeYears // ignore: cast_nullable_to_non_nullable
as int,buildingLifeBufferYears: null == buildingLifeBufferYears ? _self.buildingLifeBufferYears : buildingLifeBufferYears // ignore: cast_nullable_to_non_nullable
as int,valuationHaircutPct: null == valuationHaircutPct ? _self.valuationHaircutPct : valuationHaircutPct // ignore: cast_nullable_to_non_nullable
as double,ltvSlabs: null == ltvSlabs ? _self.ltvSlabs : ltvSlabs // ignore: cast_nullable_to_non_nullable
as List<LtvSlab>,
  ));
}

}


/// Adds pattern-matching-related methods to [LoanAssumptions].
extension LoanAssumptionsPatterns on LoanAssumptions {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoanAssumptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoanAssumptions() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoanAssumptions value)  $default,){
final _that = this;
switch (_that) {
case _LoanAssumptions():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoanAssumptions value)?  $default,){
final _that = this;
switch (_that) {
case _LoanAssumptions() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double interestPct,  double foirPct,  int maxTenureYears,  Map<String, int> retirementAge,  int assumedBuildingLifeYears,  int buildingLifeBufferYears,  double valuationHaircutPct,  List<LtvSlab> ltvSlabs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoanAssumptions() when $default != null:
return $default(_that.interestPct,_that.foirPct,_that.maxTenureYears,_that.retirementAge,_that.assumedBuildingLifeYears,_that.buildingLifeBufferYears,_that.valuationHaircutPct,_that.ltvSlabs);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double interestPct,  double foirPct,  int maxTenureYears,  Map<String, int> retirementAge,  int assumedBuildingLifeYears,  int buildingLifeBufferYears,  double valuationHaircutPct,  List<LtvSlab> ltvSlabs)  $default,) {final _that = this;
switch (_that) {
case _LoanAssumptions():
return $default(_that.interestPct,_that.foirPct,_that.maxTenureYears,_that.retirementAge,_that.assumedBuildingLifeYears,_that.buildingLifeBufferYears,_that.valuationHaircutPct,_that.ltvSlabs);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double interestPct,  double foirPct,  int maxTenureYears,  Map<String, int> retirementAge,  int assumedBuildingLifeYears,  int buildingLifeBufferYears,  double valuationHaircutPct,  List<LtvSlab> ltvSlabs)?  $default,) {final _that = this;
switch (_that) {
case _LoanAssumptions() when $default != null:
return $default(_that.interestPct,_that.foirPct,_that.maxTenureYears,_that.retirementAge,_that.assumedBuildingLifeYears,_that.buildingLifeBufferYears,_that.valuationHaircutPct,_that.ltvSlabs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoanAssumptions implements LoanAssumptions {
  const _LoanAssumptions({required this.interestPct, required this.foirPct, required this.maxTenureYears, required final  Map<String, int> retirementAge, required this.assumedBuildingLifeYears, required this.buildingLifeBufferYears, required this.valuationHaircutPct, required final  List<LtvSlab> ltvSlabs}): _retirementAge = retirementAge,_ltvSlabs = ltvSlabs;
  factory _LoanAssumptions.fromJson(Map<String, dynamic> json) => _$LoanAssumptionsFromJson(json);

@override final  double interestPct;
@override final  double foirPct;
@override final  int maxTenureYears;
 final  Map<String, int> _retirementAge;
@override Map<String, int> get retirementAge {
  if (_retirementAge is EqualUnmodifiableMapView) return _retirementAge;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_retirementAge);
}

@override final  int assumedBuildingLifeYears;
@override final  int buildingLifeBufferYears;
@override final  double valuationHaircutPct;
 final  List<LtvSlab> _ltvSlabs;
@override List<LtvSlab> get ltvSlabs {
  if (_ltvSlabs is EqualUnmodifiableListView) return _ltvSlabs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ltvSlabs);
}


/// Create a copy of LoanAssumptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoanAssumptionsCopyWith<_LoanAssumptions> get copyWith => __$LoanAssumptionsCopyWithImpl<_LoanAssumptions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoanAssumptionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoanAssumptions&&(identical(other.interestPct, interestPct) || other.interestPct == interestPct)&&(identical(other.foirPct, foirPct) || other.foirPct == foirPct)&&(identical(other.maxTenureYears, maxTenureYears) || other.maxTenureYears == maxTenureYears)&&const DeepCollectionEquality().equals(other._retirementAge, _retirementAge)&&(identical(other.assumedBuildingLifeYears, assumedBuildingLifeYears) || other.assumedBuildingLifeYears == assumedBuildingLifeYears)&&(identical(other.buildingLifeBufferYears, buildingLifeBufferYears) || other.buildingLifeBufferYears == buildingLifeBufferYears)&&(identical(other.valuationHaircutPct, valuationHaircutPct) || other.valuationHaircutPct == valuationHaircutPct)&&const DeepCollectionEquality().equals(other._ltvSlabs, _ltvSlabs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,interestPct,foirPct,maxTenureYears,const DeepCollectionEquality().hash(_retirementAge),assumedBuildingLifeYears,buildingLifeBufferYears,valuationHaircutPct,const DeepCollectionEquality().hash(_ltvSlabs));

@override
String toString() {
  return 'LoanAssumptions(interestPct: $interestPct, foirPct: $foirPct, maxTenureYears: $maxTenureYears, retirementAge: $retirementAge, assumedBuildingLifeYears: $assumedBuildingLifeYears, buildingLifeBufferYears: $buildingLifeBufferYears, valuationHaircutPct: $valuationHaircutPct, ltvSlabs: $ltvSlabs)';
}


}

/// @nodoc
abstract mixin class _$LoanAssumptionsCopyWith<$Res> implements $LoanAssumptionsCopyWith<$Res> {
  factory _$LoanAssumptionsCopyWith(_LoanAssumptions value, $Res Function(_LoanAssumptions) _then) = __$LoanAssumptionsCopyWithImpl;
@override @useResult
$Res call({
 double interestPct, double foirPct, int maxTenureYears, Map<String, int> retirementAge, int assumedBuildingLifeYears, int buildingLifeBufferYears, double valuationHaircutPct, List<LtvSlab> ltvSlabs
});




}
/// @nodoc
class __$LoanAssumptionsCopyWithImpl<$Res>
    implements _$LoanAssumptionsCopyWith<$Res> {
  __$LoanAssumptionsCopyWithImpl(this._self, this._then);

  final _LoanAssumptions _self;
  final $Res Function(_LoanAssumptions) _then;

/// Create a copy of LoanAssumptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? interestPct = null,Object? foirPct = null,Object? maxTenureYears = null,Object? retirementAge = null,Object? assumedBuildingLifeYears = null,Object? buildingLifeBufferYears = null,Object? valuationHaircutPct = null,Object? ltvSlabs = null,}) {
  return _then(_LoanAssumptions(
interestPct: null == interestPct ? _self.interestPct : interestPct // ignore: cast_nullable_to_non_nullable
as double,foirPct: null == foirPct ? _self.foirPct : foirPct // ignore: cast_nullable_to_non_nullable
as double,maxTenureYears: null == maxTenureYears ? _self.maxTenureYears : maxTenureYears // ignore: cast_nullable_to_non_nullable
as int,retirementAge: null == retirementAge ? _self._retirementAge : retirementAge // ignore: cast_nullable_to_non_nullable
as Map<String, int>,assumedBuildingLifeYears: null == assumedBuildingLifeYears ? _self.assumedBuildingLifeYears : assumedBuildingLifeYears // ignore: cast_nullable_to_non_nullable
as int,buildingLifeBufferYears: null == buildingLifeBufferYears ? _self.buildingLifeBufferYears : buildingLifeBufferYears // ignore: cast_nullable_to_non_nullable
as int,valuationHaircutPct: null == valuationHaircutPct ? _self.valuationHaircutPct : valuationHaircutPct // ignore: cast_nullable_to_non_nullable
as double,ltvSlabs: null == ltvSlabs ? _self._ltvSlabs : ltvSlabs // ignore: cast_nullable_to_non_nullable
as List<LtvSlab>,
  ));
}


}


/// @nodoc
mixin _$FlagThresholds {

 int get oldBuildingAge; int get veryOldBuildingAge; int get gstEdgeBandInr; double get highLoadingPct; double get belowMarketRatio;
/// Create a copy of FlagThresholds
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlagThresholdsCopyWith<FlagThresholds> get copyWith => _$FlagThresholdsCopyWithImpl<FlagThresholds>(this as FlagThresholds, _$identity);

  /// Serializes this FlagThresholds to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlagThresholds&&(identical(other.oldBuildingAge, oldBuildingAge) || other.oldBuildingAge == oldBuildingAge)&&(identical(other.veryOldBuildingAge, veryOldBuildingAge) || other.veryOldBuildingAge == veryOldBuildingAge)&&(identical(other.gstEdgeBandInr, gstEdgeBandInr) || other.gstEdgeBandInr == gstEdgeBandInr)&&(identical(other.highLoadingPct, highLoadingPct) || other.highLoadingPct == highLoadingPct)&&(identical(other.belowMarketRatio, belowMarketRatio) || other.belowMarketRatio == belowMarketRatio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oldBuildingAge,veryOldBuildingAge,gstEdgeBandInr,highLoadingPct,belowMarketRatio);

@override
String toString() {
  return 'FlagThresholds(oldBuildingAge: $oldBuildingAge, veryOldBuildingAge: $veryOldBuildingAge, gstEdgeBandInr: $gstEdgeBandInr, highLoadingPct: $highLoadingPct, belowMarketRatio: $belowMarketRatio)';
}


}

/// @nodoc
abstract mixin class $FlagThresholdsCopyWith<$Res>  {
  factory $FlagThresholdsCopyWith(FlagThresholds value, $Res Function(FlagThresholds) _then) = _$FlagThresholdsCopyWithImpl;
@useResult
$Res call({
 int oldBuildingAge, int veryOldBuildingAge, int gstEdgeBandInr, double highLoadingPct, double belowMarketRatio
});




}
/// @nodoc
class _$FlagThresholdsCopyWithImpl<$Res>
    implements $FlagThresholdsCopyWith<$Res> {
  _$FlagThresholdsCopyWithImpl(this._self, this._then);

  final FlagThresholds _self;
  final $Res Function(FlagThresholds) _then;

/// Create a copy of FlagThresholds
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldBuildingAge = null,Object? veryOldBuildingAge = null,Object? gstEdgeBandInr = null,Object? highLoadingPct = null,Object? belowMarketRatio = null,}) {
  return _then(_self.copyWith(
oldBuildingAge: null == oldBuildingAge ? _self.oldBuildingAge : oldBuildingAge // ignore: cast_nullable_to_non_nullable
as int,veryOldBuildingAge: null == veryOldBuildingAge ? _self.veryOldBuildingAge : veryOldBuildingAge // ignore: cast_nullable_to_non_nullable
as int,gstEdgeBandInr: null == gstEdgeBandInr ? _self.gstEdgeBandInr : gstEdgeBandInr // ignore: cast_nullable_to_non_nullable
as int,highLoadingPct: null == highLoadingPct ? _self.highLoadingPct : highLoadingPct // ignore: cast_nullable_to_non_nullable
as double,belowMarketRatio: null == belowMarketRatio ? _self.belowMarketRatio : belowMarketRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FlagThresholds].
extension FlagThresholdsPatterns on FlagThresholds {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlagThresholds value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlagThresholds() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlagThresholds value)  $default,){
final _that = this;
switch (_that) {
case _FlagThresholds():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlagThresholds value)?  $default,){
final _that = this;
switch (_that) {
case _FlagThresholds() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int oldBuildingAge,  int veryOldBuildingAge,  int gstEdgeBandInr,  double highLoadingPct,  double belowMarketRatio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlagThresholds() when $default != null:
return $default(_that.oldBuildingAge,_that.veryOldBuildingAge,_that.gstEdgeBandInr,_that.highLoadingPct,_that.belowMarketRatio);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int oldBuildingAge,  int veryOldBuildingAge,  int gstEdgeBandInr,  double highLoadingPct,  double belowMarketRatio)  $default,) {final _that = this;
switch (_that) {
case _FlagThresholds():
return $default(_that.oldBuildingAge,_that.veryOldBuildingAge,_that.gstEdgeBandInr,_that.highLoadingPct,_that.belowMarketRatio);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int oldBuildingAge,  int veryOldBuildingAge,  int gstEdgeBandInr,  double highLoadingPct,  double belowMarketRatio)?  $default,) {final _that = this;
switch (_that) {
case _FlagThresholds() when $default != null:
return $default(_that.oldBuildingAge,_that.veryOldBuildingAge,_that.gstEdgeBandInr,_that.highLoadingPct,_that.belowMarketRatio);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlagThresholds implements FlagThresholds {
  const _FlagThresholds({required this.oldBuildingAge, required this.veryOldBuildingAge, required this.gstEdgeBandInr, required this.highLoadingPct, required this.belowMarketRatio});
  factory _FlagThresholds.fromJson(Map<String, dynamic> json) => _$FlagThresholdsFromJson(json);

@override final  int oldBuildingAge;
@override final  int veryOldBuildingAge;
@override final  int gstEdgeBandInr;
@override final  double highLoadingPct;
@override final  double belowMarketRatio;

/// Create a copy of FlagThresholds
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlagThresholdsCopyWith<_FlagThresholds> get copyWith => __$FlagThresholdsCopyWithImpl<_FlagThresholds>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlagThresholdsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlagThresholds&&(identical(other.oldBuildingAge, oldBuildingAge) || other.oldBuildingAge == oldBuildingAge)&&(identical(other.veryOldBuildingAge, veryOldBuildingAge) || other.veryOldBuildingAge == veryOldBuildingAge)&&(identical(other.gstEdgeBandInr, gstEdgeBandInr) || other.gstEdgeBandInr == gstEdgeBandInr)&&(identical(other.highLoadingPct, highLoadingPct) || other.highLoadingPct == highLoadingPct)&&(identical(other.belowMarketRatio, belowMarketRatio) || other.belowMarketRatio == belowMarketRatio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oldBuildingAge,veryOldBuildingAge,gstEdgeBandInr,highLoadingPct,belowMarketRatio);

@override
String toString() {
  return 'FlagThresholds(oldBuildingAge: $oldBuildingAge, veryOldBuildingAge: $veryOldBuildingAge, gstEdgeBandInr: $gstEdgeBandInr, highLoadingPct: $highLoadingPct, belowMarketRatio: $belowMarketRatio)';
}


}

/// @nodoc
abstract mixin class _$FlagThresholdsCopyWith<$Res> implements $FlagThresholdsCopyWith<$Res> {
  factory _$FlagThresholdsCopyWith(_FlagThresholds value, $Res Function(_FlagThresholds) _then) = __$FlagThresholdsCopyWithImpl;
@override @useResult
$Res call({
 int oldBuildingAge, int veryOldBuildingAge, int gstEdgeBandInr, double highLoadingPct, double belowMarketRatio
});




}
/// @nodoc
class __$FlagThresholdsCopyWithImpl<$Res>
    implements _$FlagThresholdsCopyWith<$Res> {
  __$FlagThresholdsCopyWithImpl(this._self, this._then);

  final _FlagThresholds _self;
  final $Res Function(_FlagThresholds) _then;

/// Create a copy of FlagThresholds
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldBuildingAge = null,Object? veryOldBuildingAge = null,Object? gstEdgeBandInr = null,Object? highLoadingPct = null,Object? belowMarketRatio = null,}) {
  return _then(_FlagThresholds(
oldBuildingAge: null == oldBuildingAge ? _self.oldBuildingAge : oldBuildingAge // ignore: cast_nullable_to_non_nullable
as int,veryOldBuildingAge: null == veryOldBuildingAge ? _self.veryOldBuildingAge : veryOldBuildingAge // ignore: cast_nullable_to_non_nullable
as int,gstEdgeBandInr: null == gstEdgeBandInr ? _self.gstEdgeBandInr : gstEdgeBandInr // ignore: cast_nullable_to_non_nullable
as int,highLoadingPct: null == highLoadingPct ? _self.highLoadingPct : highLoadingPct // ignore: cast_nullable_to_non_nullable
as double,belowMarketRatio: null == belowMarketRatio ? _self.belowMarketRatio : belowMarketRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$WizardDefaults {

 int get monthsToPossession; int get buyerAge; int get tenureYears;
/// Create a copy of WizardDefaults
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WizardDefaultsCopyWith<WizardDefaults> get copyWith => _$WizardDefaultsCopyWithImpl<WizardDefaults>(this as WizardDefaults, _$identity);

  /// Serializes this WizardDefaults to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WizardDefaults&&(identical(other.monthsToPossession, monthsToPossession) || other.monthsToPossession == monthsToPossession)&&(identical(other.buyerAge, buyerAge) || other.buyerAge == buyerAge)&&(identical(other.tenureYears, tenureYears) || other.tenureYears == tenureYears));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,monthsToPossession,buyerAge,tenureYears);

@override
String toString() {
  return 'WizardDefaults(monthsToPossession: $monthsToPossession, buyerAge: $buyerAge, tenureYears: $tenureYears)';
}


}

/// @nodoc
abstract mixin class $WizardDefaultsCopyWith<$Res>  {
  factory $WizardDefaultsCopyWith(WizardDefaults value, $Res Function(WizardDefaults) _then) = _$WizardDefaultsCopyWithImpl;
@useResult
$Res call({
 int monthsToPossession, int buyerAge, int tenureYears
});




}
/// @nodoc
class _$WizardDefaultsCopyWithImpl<$Res>
    implements $WizardDefaultsCopyWith<$Res> {
  _$WizardDefaultsCopyWithImpl(this._self, this._then);

  final WizardDefaults _self;
  final $Res Function(WizardDefaults) _then;

/// Create a copy of WizardDefaults
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? monthsToPossession = null,Object? buyerAge = null,Object? tenureYears = null,}) {
  return _then(_self.copyWith(
monthsToPossession: null == monthsToPossession ? _self.monthsToPossession : monthsToPossession // ignore: cast_nullable_to_non_nullable
as int,buyerAge: null == buyerAge ? _self.buyerAge : buyerAge // ignore: cast_nullable_to_non_nullable
as int,tenureYears: null == tenureYears ? _self.tenureYears : tenureYears // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WizardDefaults].
extension WizardDefaultsPatterns on WizardDefaults {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WizardDefaults value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WizardDefaults() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WizardDefaults value)  $default,){
final _that = this;
switch (_that) {
case _WizardDefaults():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WizardDefaults value)?  $default,){
final _that = this;
switch (_that) {
case _WizardDefaults() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int monthsToPossession,  int buyerAge,  int tenureYears)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WizardDefaults() when $default != null:
return $default(_that.monthsToPossession,_that.buyerAge,_that.tenureYears);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int monthsToPossession,  int buyerAge,  int tenureYears)  $default,) {final _that = this;
switch (_that) {
case _WizardDefaults():
return $default(_that.monthsToPossession,_that.buyerAge,_that.tenureYears);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int monthsToPossession,  int buyerAge,  int tenureYears)?  $default,) {final _that = this;
switch (_that) {
case _WizardDefaults() when $default != null:
return $default(_that.monthsToPossession,_that.buyerAge,_that.tenureYears);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WizardDefaults implements WizardDefaults {
  const _WizardDefaults({this.monthsToPossession = 36, this.buyerAge = 32, this.tenureYears = 20});
  factory _WizardDefaults.fromJson(Map<String, dynamic> json) => _$WizardDefaultsFromJson(json);

@override@JsonKey() final  int monthsToPossession;
@override@JsonKey() final  int buyerAge;
@override@JsonKey() final  int tenureYears;

/// Create a copy of WizardDefaults
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WizardDefaultsCopyWith<_WizardDefaults> get copyWith => __$WizardDefaultsCopyWithImpl<_WizardDefaults>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WizardDefaultsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WizardDefaults&&(identical(other.monthsToPossession, monthsToPossession) || other.monthsToPossession == monthsToPossession)&&(identical(other.buyerAge, buyerAge) || other.buyerAge == buyerAge)&&(identical(other.tenureYears, tenureYears) || other.tenureYears == tenureYears));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,monthsToPossession,buyerAge,tenureYears);

@override
String toString() {
  return 'WizardDefaults(monthsToPossession: $monthsToPossession, buyerAge: $buyerAge, tenureYears: $tenureYears)';
}


}

/// @nodoc
abstract mixin class _$WizardDefaultsCopyWith<$Res> implements $WizardDefaultsCopyWith<$Res> {
  factory _$WizardDefaultsCopyWith(_WizardDefaults value, $Res Function(_WizardDefaults) _then) = __$WizardDefaultsCopyWithImpl;
@override @useResult
$Res call({
 int monthsToPossession, int buyerAge, int tenureYears
});




}
/// @nodoc
class __$WizardDefaultsCopyWithImpl<$Res>
    implements _$WizardDefaultsCopyWith<$Res> {
  __$WizardDefaultsCopyWithImpl(this._self, this._then);

  final _WizardDefaults _self;
  final $Res Function(_WizardDefaults) _then;

/// Create a copy of WizardDefaults
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? monthsToPossession = null,Object? buyerAge = null,Object? tenureYears = null,}) {
  return _then(_WizardDefaults(
monthsToPossession: null == monthsToPossession ? _self.monthsToPossession : monthsToPossession // ignore: cast_nullable_to_non_nullable
as int,buyerAge: null == buyerAge ? _self.buyerAge : buyerAge // ignore: cast_nullable_to_non_nullable
as int,tenureYears: null == tenureYears ? _self.tenureYears : tenureYears // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SourceLink {

 String get title; String get url;
/// Create a copy of SourceLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceLinkCopyWith<SourceLink> get copyWith => _$SourceLinkCopyWithImpl<SourceLink>(this as SourceLink, _$identity);

  /// Serializes this SourceLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceLink&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url);

@override
String toString() {
  return 'SourceLink(title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class $SourceLinkCopyWith<$Res>  {
  factory $SourceLinkCopyWith(SourceLink value, $Res Function(SourceLink) _then) = _$SourceLinkCopyWithImpl;
@useResult
$Res call({
 String title, String url
});




}
/// @nodoc
class _$SourceLinkCopyWithImpl<$Res>
    implements $SourceLinkCopyWith<$Res> {
  _$SourceLinkCopyWithImpl(this._self, this._then);

  final SourceLink _self;
  final $Res Function(SourceLink) _then;

/// Create a copy of SourceLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? url = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SourceLink].
extension SourceLinkPatterns on SourceLink {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourceLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourceLink() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourceLink value)  $default,){
final _that = this;
switch (_that) {
case _SourceLink():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourceLink value)?  $default,){
final _that = this;
switch (_that) {
case _SourceLink() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourceLink() when $default != null:
return $default(_that.title,_that.url);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String url)  $default,) {final _that = this;
switch (_that) {
case _SourceLink():
return $default(_that.title,_that.url);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String url)?  $default,) {final _that = this;
switch (_that) {
case _SourceLink() when $default != null:
return $default(_that.title,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SourceLink implements SourceLink {
  const _SourceLink({required this.title, required this.url});
  factory _SourceLink.fromJson(Map<String, dynamic> json) => _$SourceLinkFromJson(json);

@override final  String title;
@override final  String url;

/// Create a copy of SourceLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceLinkCopyWith<_SourceLink> get copyWith => __$SourceLinkCopyWithImpl<_SourceLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SourceLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceLink&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url);

@override
String toString() {
  return 'SourceLink(title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class _$SourceLinkCopyWith<$Res> implements $SourceLinkCopyWith<$Res> {
  factory _$SourceLinkCopyWith(_SourceLink value, $Res Function(_SourceLink) _then) = __$SourceLinkCopyWithImpl;
@override @useResult
$Res call({
 String title, String url
});




}
/// @nodoc
class __$SourceLinkCopyWithImpl<$Res>
    implements _$SourceLinkCopyWith<$Res> {
  __$SourceLinkCopyWithImpl(this._self, this._then);

  final _SourceLink _self;
  final $Res Function(_SourceLink) _then;

/// Create a copy of SourceLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? url = null,}) {
  return _then(_SourceLink(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
