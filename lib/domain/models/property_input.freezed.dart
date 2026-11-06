// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyInput {

 PropertyCategory get category; PropertyStatus get status;/// Free string per category: `1RK` / `1BHK` / `2BHK` for flats.
 String get type; int get quotedPrice; double get carpetSqft; double? get builtupSqft; Ownership get ownership; int? get readyReckonerValue; double? get areaReferencePsf; List<Extra> get extras; int? get corpus; int? get maintenanceMonths; double? get maintenanceRatePsf; int? get transferFee; double? get brokeragePct; int? get buildingYear; bool? get hasOc; int? get sellerLoan; String? get reraNumber; int? get monthsToPossession; int? get monthlyRent; int? get legalFees; int? get interiors; int get currentYear; Finance? get finance; String? get locality;
/// Create a copy of PropertyInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyInputCopyWith<PropertyInput> get copyWith => _$PropertyInputCopyWithImpl<PropertyInput>(this as PropertyInput, _$identity);

  /// Serializes this PropertyInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyInput&&(identical(other.category, category) || other.category == category)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.quotedPrice, quotedPrice) || other.quotedPrice == quotedPrice)&&(identical(other.carpetSqft, carpetSqft) || other.carpetSqft == carpetSqft)&&(identical(other.builtupSqft, builtupSqft) || other.builtupSqft == builtupSqft)&&(identical(other.ownership, ownership) || other.ownership == ownership)&&(identical(other.readyReckonerValue, readyReckonerValue) || other.readyReckonerValue == readyReckonerValue)&&(identical(other.areaReferencePsf, areaReferencePsf) || other.areaReferencePsf == areaReferencePsf)&&const DeepCollectionEquality().equals(other.extras, extras)&&(identical(other.corpus, corpus) || other.corpus == corpus)&&(identical(other.maintenanceMonths, maintenanceMonths) || other.maintenanceMonths == maintenanceMonths)&&(identical(other.maintenanceRatePsf, maintenanceRatePsf) || other.maintenanceRatePsf == maintenanceRatePsf)&&(identical(other.transferFee, transferFee) || other.transferFee == transferFee)&&(identical(other.brokeragePct, brokeragePct) || other.brokeragePct == brokeragePct)&&(identical(other.buildingYear, buildingYear) || other.buildingYear == buildingYear)&&(identical(other.hasOc, hasOc) || other.hasOc == hasOc)&&(identical(other.sellerLoan, sellerLoan) || other.sellerLoan == sellerLoan)&&(identical(other.reraNumber, reraNumber) || other.reraNumber == reraNumber)&&(identical(other.monthsToPossession, monthsToPossession) || other.monthsToPossession == monthsToPossession)&&(identical(other.monthlyRent, monthlyRent) || other.monthlyRent == monthlyRent)&&(identical(other.legalFees, legalFees) || other.legalFees == legalFees)&&(identical(other.interiors, interiors) || other.interiors == interiors)&&(identical(other.currentYear, currentYear) || other.currentYear == currentYear)&&(identical(other.finance, finance) || other.finance == finance)&&(identical(other.locality, locality) || other.locality == locality));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,category,status,type,quotedPrice,carpetSqft,builtupSqft,ownership,readyReckonerValue,areaReferencePsf,const DeepCollectionEquality().hash(extras),corpus,maintenanceMonths,maintenanceRatePsf,transferFee,brokeragePct,buildingYear,hasOc,sellerLoan,reraNumber,monthsToPossession,monthlyRent,legalFees,interiors,currentYear,finance,locality]);

@override
String toString() {
  return 'PropertyInput(category: $category, status: $status, type: $type, quotedPrice: $quotedPrice, carpetSqft: $carpetSqft, builtupSqft: $builtupSqft, ownership: $ownership, readyReckonerValue: $readyReckonerValue, areaReferencePsf: $areaReferencePsf, extras: $extras, corpus: $corpus, maintenanceMonths: $maintenanceMonths, maintenanceRatePsf: $maintenanceRatePsf, transferFee: $transferFee, brokeragePct: $brokeragePct, buildingYear: $buildingYear, hasOc: $hasOc, sellerLoan: $sellerLoan, reraNumber: $reraNumber, monthsToPossession: $monthsToPossession, monthlyRent: $monthlyRent, legalFees: $legalFees, interiors: $interiors, currentYear: $currentYear, finance: $finance, locality: $locality)';
}


}

/// @nodoc
abstract mixin class $PropertyInputCopyWith<$Res>  {
  factory $PropertyInputCopyWith(PropertyInput value, $Res Function(PropertyInput) _then) = _$PropertyInputCopyWithImpl;
@useResult
$Res call({
 PropertyCategory category, PropertyStatus status, String type, int quotedPrice, double carpetSqft, double? builtupSqft, Ownership ownership, int? readyReckonerValue, double? areaReferencePsf, List<Extra> extras, int? corpus, int? maintenanceMonths, double? maintenanceRatePsf, int? transferFee, double? brokeragePct, int? buildingYear, bool? hasOc, int? sellerLoan, String? reraNumber, int? monthsToPossession, int? monthlyRent, int? legalFees, int? interiors, int currentYear, Finance? finance, String? locality
});


$FinanceCopyWith<$Res>? get finance;

}
/// @nodoc
class _$PropertyInputCopyWithImpl<$Res>
    implements $PropertyInputCopyWith<$Res> {
  _$PropertyInputCopyWithImpl(this._self, this._then);

  final PropertyInput _self;
  final $Res Function(PropertyInput) _then;

/// Create a copy of PropertyInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? status = null,Object? type = null,Object? quotedPrice = null,Object? carpetSqft = null,Object? builtupSqft = freezed,Object? ownership = null,Object? readyReckonerValue = freezed,Object? areaReferencePsf = freezed,Object? extras = null,Object? corpus = freezed,Object? maintenanceMonths = freezed,Object? maintenanceRatePsf = freezed,Object? transferFee = freezed,Object? brokeragePct = freezed,Object? buildingYear = freezed,Object? hasOc = freezed,Object? sellerLoan = freezed,Object? reraNumber = freezed,Object? monthsToPossession = freezed,Object? monthlyRent = freezed,Object? legalFees = freezed,Object? interiors = freezed,Object? currentYear = null,Object? finance = freezed,Object? locality = freezed,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PropertyCategory,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PropertyStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quotedPrice: null == quotedPrice ? _self.quotedPrice : quotedPrice // ignore: cast_nullable_to_non_nullable
as int,carpetSqft: null == carpetSqft ? _self.carpetSqft : carpetSqft // ignore: cast_nullable_to_non_nullable
as double,builtupSqft: freezed == builtupSqft ? _self.builtupSqft : builtupSqft // ignore: cast_nullable_to_non_nullable
as double?,ownership: null == ownership ? _self.ownership : ownership // ignore: cast_nullable_to_non_nullable
as Ownership,readyReckonerValue: freezed == readyReckonerValue ? _self.readyReckonerValue : readyReckonerValue // ignore: cast_nullable_to_non_nullable
as int?,areaReferencePsf: freezed == areaReferencePsf ? _self.areaReferencePsf : areaReferencePsf // ignore: cast_nullable_to_non_nullable
as double?,extras: null == extras ? _self.extras : extras // ignore: cast_nullable_to_non_nullable
as List<Extra>,corpus: freezed == corpus ? _self.corpus : corpus // ignore: cast_nullable_to_non_nullable
as int?,maintenanceMonths: freezed == maintenanceMonths ? _self.maintenanceMonths : maintenanceMonths // ignore: cast_nullable_to_non_nullable
as int?,maintenanceRatePsf: freezed == maintenanceRatePsf ? _self.maintenanceRatePsf : maintenanceRatePsf // ignore: cast_nullable_to_non_nullable
as double?,transferFee: freezed == transferFee ? _self.transferFee : transferFee // ignore: cast_nullable_to_non_nullable
as int?,brokeragePct: freezed == brokeragePct ? _self.brokeragePct : brokeragePct // ignore: cast_nullable_to_non_nullable
as double?,buildingYear: freezed == buildingYear ? _self.buildingYear : buildingYear // ignore: cast_nullable_to_non_nullable
as int?,hasOc: freezed == hasOc ? _self.hasOc : hasOc // ignore: cast_nullable_to_non_nullable
as bool?,sellerLoan: freezed == sellerLoan ? _self.sellerLoan : sellerLoan // ignore: cast_nullable_to_non_nullable
as int?,reraNumber: freezed == reraNumber ? _self.reraNumber : reraNumber // ignore: cast_nullable_to_non_nullable
as String?,monthsToPossession: freezed == monthsToPossession ? _self.monthsToPossession : monthsToPossession // ignore: cast_nullable_to_non_nullable
as int?,monthlyRent: freezed == monthlyRent ? _self.monthlyRent : monthlyRent // ignore: cast_nullable_to_non_nullable
as int?,legalFees: freezed == legalFees ? _self.legalFees : legalFees // ignore: cast_nullable_to_non_nullable
as int?,interiors: freezed == interiors ? _self.interiors : interiors // ignore: cast_nullable_to_non_nullable
as int?,currentYear: null == currentYear ? _self.currentYear : currentYear // ignore: cast_nullable_to_non_nullable
as int,finance: freezed == finance ? _self.finance : finance // ignore: cast_nullable_to_non_nullable
as Finance?,locality: freezed == locality ? _self.locality : locality // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PropertyInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCopyWith<$Res>? get finance {
    if (_self.finance == null) {
    return null;
  }

  return $FinanceCopyWith<$Res>(_self.finance!, (value) {
    return _then(_self.copyWith(finance: value));
  });
}
}


/// Adds pattern-matching-related methods to [PropertyInput].
extension PropertyInputPatterns on PropertyInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyInput value)  $default,){
final _that = this;
switch (_that) {
case _PropertyInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyInput value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PropertyCategory category,  PropertyStatus status,  String type,  int quotedPrice,  double carpetSqft,  double? builtupSqft,  Ownership ownership,  int? readyReckonerValue,  double? areaReferencePsf,  List<Extra> extras,  int? corpus,  int? maintenanceMonths,  double? maintenanceRatePsf,  int? transferFee,  double? brokeragePct,  int? buildingYear,  bool? hasOc,  int? sellerLoan,  String? reraNumber,  int? monthsToPossession,  int? monthlyRent,  int? legalFees,  int? interiors,  int currentYear,  Finance? finance,  String? locality)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyInput() when $default != null:
return $default(_that.category,_that.status,_that.type,_that.quotedPrice,_that.carpetSqft,_that.builtupSqft,_that.ownership,_that.readyReckonerValue,_that.areaReferencePsf,_that.extras,_that.corpus,_that.maintenanceMonths,_that.maintenanceRatePsf,_that.transferFee,_that.brokeragePct,_that.buildingYear,_that.hasOc,_that.sellerLoan,_that.reraNumber,_that.monthsToPossession,_that.monthlyRent,_that.legalFees,_that.interiors,_that.currentYear,_that.finance,_that.locality);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PropertyCategory category,  PropertyStatus status,  String type,  int quotedPrice,  double carpetSqft,  double? builtupSqft,  Ownership ownership,  int? readyReckonerValue,  double? areaReferencePsf,  List<Extra> extras,  int? corpus,  int? maintenanceMonths,  double? maintenanceRatePsf,  int? transferFee,  double? brokeragePct,  int? buildingYear,  bool? hasOc,  int? sellerLoan,  String? reraNumber,  int? monthsToPossession,  int? monthlyRent,  int? legalFees,  int? interiors,  int currentYear,  Finance? finance,  String? locality)  $default,) {final _that = this;
switch (_that) {
case _PropertyInput():
return $default(_that.category,_that.status,_that.type,_that.quotedPrice,_that.carpetSqft,_that.builtupSqft,_that.ownership,_that.readyReckonerValue,_that.areaReferencePsf,_that.extras,_that.corpus,_that.maintenanceMonths,_that.maintenanceRatePsf,_that.transferFee,_that.brokeragePct,_that.buildingYear,_that.hasOc,_that.sellerLoan,_that.reraNumber,_that.monthsToPossession,_that.monthlyRent,_that.legalFees,_that.interiors,_that.currentYear,_that.finance,_that.locality);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PropertyCategory category,  PropertyStatus status,  String type,  int quotedPrice,  double carpetSqft,  double? builtupSqft,  Ownership ownership,  int? readyReckonerValue,  double? areaReferencePsf,  List<Extra> extras,  int? corpus,  int? maintenanceMonths,  double? maintenanceRatePsf,  int? transferFee,  double? brokeragePct,  int? buildingYear,  bool? hasOc,  int? sellerLoan,  String? reraNumber,  int? monthsToPossession,  int? monthlyRent,  int? legalFees,  int? interiors,  int currentYear,  Finance? finance,  String? locality)?  $default,) {final _that = this;
switch (_that) {
case _PropertyInput() when $default != null:
return $default(_that.category,_that.status,_that.type,_that.quotedPrice,_that.carpetSqft,_that.builtupSqft,_that.ownership,_that.readyReckonerValue,_that.areaReferencePsf,_that.extras,_that.corpus,_that.maintenanceMonths,_that.maintenanceRatePsf,_that.transferFee,_that.brokeragePct,_that.buildingYear,_that.hasOc,_that.sellerLoan,_that.reraNumber,_that.monthsToPossession,_that.monthlyRent,_that.legalFees,_that.interiors,_that.currentYear,_that.finance,_that.locality);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PropertyInput extends PropertyInput {
  const _PropertyInput({this.category = PropertyCategory.residentialFlat, required this.status, required this.type, required this.quotedPrice, required this.carpetSqft, this.builtupSqft, required this.ownership, this.readyReckonerValue, this.areaReferencePsf, final  List<Extra> extras = const <Extra>[], this.corpus, this.maintenanceMonths, this.maintenanceRatePsf, this.transferFee, this.brokeragePct, this.buildingYear, this.hasOc, this.sellerLoan, this.reraNumber, this.monthsToPossession, this.monthlyRent, this.legalFees, this.interiors, required this.currentYear, this.finance, this.locality}): _extras = extras,super._();
  factory _PropertyInput.fromJson(Map<String, dynamic> json) => _$PropertyInputFromJson(json);

@override@JsonKey() final  PropertyCategory category;
@override final  PropertyStatus status;
/// Free string per category: `1RK` / `1BHK` / `2BHK` for flats.
@override final  String type;
@override final  int quotedPrice;
@override final  double carpetSqft;
@override final  double? builtupSqft;
@override final  Ownership ownership;
@override final  int? readyReckonerValue;
@override final  double? areaReferencePsf;
 final  List<Extra> _extras;
@override@JsonKey() List<Extra> get extras {
  if (_extras is EqualUnmodifiableListView) return _extras;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_extras);
}

@override final  int? corpus;
@override final  int? maintenanceMonths;
@override final  double? maintenanceRatePsf;
@override final  int? transferFee;
@override final  double? brokeragePct;
@override final  int? buildingYear;
@override final  bool? hasOc;
@override final  int? sellerLoan;
@override final  String? reraNumber;
@override final  int? monthsToPossession;
@override final  int? monthlyRent;
@override final  int? legalFees;
@override final  int? interiors;
@override final  int currentYear;
@override final  Finance? finance;
@override final  String? locality;

/// Create a copy of PropertyInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyInputCopyWith<_PropertyInput> get copyWith => __$PropertyInputCopyWithImpl<_PropertyInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertyInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyInput&&(identical(other.category, category) || other.category == category)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.quotedPrice, quotedPrice) || other.quotedPrice == quotedPrice)&&(identical(other.carpetSqft, carpetSqft) || other.carpetSqft == carpetSqft)&&(identical(other.builtupSqft, builtupSqft) || other.builtupSqft == builtupSqft)&&(identical(other.ownership, ownership) || other.ownership == ownership)&&(identical(other.readyReckonerValue, readyReckonerValue) || other.readyReckonerValue == readyReckonerValue)&&(identical(other.areaReferencePsf, areaReferencePsf) || other.areaReferencePsf == areaReferencePsf)&&const DeepCollectionEquality().equals(other._extras, _extras)&&(identical(other.corpus, corpus) || other.corpus == corpus)&&(identical(other.maintenanceMonths, maintenanceMonths) || other.maintenanceMonths == maintenanceMonths)&&(identical(other.maintenanceRatePsf, maintenanceRatePsf) || other.maintenanceRatePsf == maintenanceRatePsf)&&(identical(other.transferFee, transferFee) || other.transferFee == transferFee)&&(identical(other.brokeragePct, brokeragePct) || other.brokeragePct == brokeragePct)&&(identical(other.buildingYear, buildingYear) || other.buildingYear == buildingYear)&&(identical(other.hasOc, hasOc) || other.hasOc == hasOc)&&(identical(other.sellerLoan, sellerLoan) || other.sellerLoan == sellerLoan)&&(identical(other.reraNumber, reraNumber) || other.reraNumber == reraNumber)&&(identical(other.monthsToPossession, monthsToPossession) || other.monthsToPossession == monthsToPossession)&&(identical(other.monthlyRent, monthlyRent) || other.monthlyRent == monthlyRent)&&(identical(other.legalFees, legalFees) || other.legalFees == legalFees)&&(identical(other.interiors, interiors) || other.interiors == interiors)&&(identical(other.currentYear, currentYear) || other.currentYear == currentYear)&&(identical(other.finance, finance) || other.finance == finance)&&(identical(other.locality, locality) || other.locality == locality));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,category,status,type,quotedPrice,carpetSqft,builtupSqft,ownership,readyReckonerValue,areaReferencePsf,const DeepCollectionEquality().hash(_extras),corpus,maintenanceMonths,maintenanceRatePsf,transferFee,brokeragePct,buildingYear,hasOc,sellerLoan,reraNumber,monthsToPossession,monthlyRent,legalFees,interiors,currentYear,finance,locality]);

@override
String toString() {
  return 'PropertyInput(category: $category, status: $status, type: $type, quotedPrice: $quotedPrice, carpetSqft: $carpetSqft, builtupSqft: $builtupSqft, ownership: $ownership, readyReckonerValue: $readyReckonerValue, areaReferencePsf: $areaReferencePsf, extras: $extras, corpus: $corpus, maintenanceMonths: $maintenanceMonths, maintenanceRatePsf: $maintenanceRatePsf, transferFee: $transferFee, brokeragePct: $brokeragePct, buildingYear: $buildingYear, hasOc: $hasOc, sellerLoan: $sellerLoan, reraNumber: $reraNumber, monthsToPossession: $monthsToPossession, monthlyRent: $monthlyRent, legalFees: $legalFees, interiors: $interiors, currentYear: $currentYear, finance: $finance, locality: $locality)';
}


}

/// @nodoc
abstract mixin class _$PropertyInputCopyWith<$Res> implements $PropertyInputCopyWith<$Res> {
  factory _$PropertyInputCopyWith(_PropertyInput value, $Res Function(_PropertyInput) _then) = __$PropertyInputCopyWithImpl;
@override @useResult
$Res call({
 PropertyCategory category, PropertyStatus status, String type, int quotedPrice, double carpetSqft, double? builtupSqft, Ownership ownership, int? readyReckonerValue, double? areaReferencePsf, List<Extra> extras, int? corpus, int? maintenanceMonths, double? maintenanceRatePsf, int? transferFee, double? brokeragePct, int? buildingYear, bool? hasOc, int? sellerLoan, String? reraNumber, int? monthsToPossession, int? monthlyRent, int? legalFees, int? interiors, int currentYear, Finance? finance, String? locality
});


@override $FinanceCopyWith<$Res>? get finance;

}
/// @nodoc
class __$PropertyInputCopyWithImpl<$Res>
    implements _$PropertyInputCopyWith<$Res> {
  __$PropertyInputCopyWithImpl(this._self, this._then);

  final _PropertyInput _self;
  final $Res Function(_PropertyInput) _then;

/// Create a copy of PropertyInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? status = null,Object? type = null,Object? quotedPrice = null,Object? carpetSqft = null,Object? builtupSqft = freezed,Object? ownership = null,Object? readyReckonerValue = freezed,Object? areaReferencePsf = freezed,Object? extras = null,Object? corpus = freezed,Object? maintenanceMonths = freezed,Object? maintenanceRatePsf = freezed,Object? transferFee = freezed,Object? brokeragePct = freezed,Object? buildingYear = freezed,Object? hasOc = freezed,Object? sellerLoan = freezed,Object? reraNumber = freezed,Object? monthsToPossession = freezed,Object? monthlyRent = freezed,Object? legalFees = freezed,Object? interiors = freezed,Object? currentYear = null,Object? finance = freezed,Object? locality = freezed,}) {
  return _then(_PropertyInput(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PropertyCategory,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PropertyStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quotedPrice: null == quotedPrice ? _self.quotedPrice : quotedPrice // ignore: cast_nullable_to_non_nullable
as int,carpetSqft: null == carpetSqft ? _self.carpetSqft : carpetSqft // ignore: cast_nullable_to_non_nullable
as double,builtupSqft: freezed == builtupSqft ? _self.builtupSqft : builtupSqft // ignore: cast_nullable_to_non_nullable
as double?,ownership: null == ownership ? _self.ownership : ownership // ignore: cast_nullable_to_non_nullable
as Ownership,readyReckonerValue: freezed == readyReckonerValue ? _self.readyReckonerValue : readyReckonerValue // ignore: cast_nullable_to_non_nullable
as int?,areaReferencePsf: freezed == areaReferencePsf ? _self.areaReferencePsf : areaReferencePsf // ignore: cast_nullable_to_non_nullable
as double?,extras: null == extras ? _self._extras : extras // ignore: cast_nullable_to_non_nullable
as List<Extra>,corpus: freezed == corpus ? _self.corpus : corpus // ignore: cast_nullable_to_non_nullable
as int?,maintenanceMonths: freezed == maintenanceMonths ? _self.maintenanceMonths : maintenanceMonths // ignore: cast_nullable_to_non_nullable
as int?,maintenanceRatePsf: freezed == maintenanceRatePsf ? _self.maintenanceRatePsf : maintenanceRatePsf // ignore: cast_nullable_to_non_nullable
as double?,transferFee: freezed == transferFee ? _self.transferFee : transferFee // ignore: cast_nullable_to_non_nullable
as int?,brokeragePct: freezed == brokeragePct ? _self.brokeragePct : brokeragePct // ignore: cast_nullable_to_non_nullable
as double?,buildingYear: freezed == buildingYear ? _self.buildingYear : buildingYear // ignore: cast_nullable_to_non_nullable
as int?,hasOc: freezed == hasOc ? _self.hasOc : hasOc // ignore: cast_nullable_to_non_nullable
as bool?,sellerLoan: freezed == sellerLoan ? _self.sellerLoan : sellerLoan // ignore: cast_nullable_to_non_nullable
as int?,reraNumber: freezed == reraNumber ? _self.reraNumber : reraNumber // ignore: cast_nullable_to_non_nullable
as String?,monthsToPossession: freezed == monthsToPossession ? _self.monthsToPossession : monthsToPossession // ignore: cast_nullable_to_non_nullable
as int?,monthlyRent: freezed == monthlyRent ? _self.monthlyRent : monthlyRent // ignore: cast_nullable_to_non_nullable
as int?,legalFees: freezed == legalFees ? _self.legalFees : legalFees // ignore: cast_nullable_to_non_nullable
as int?,interiors: freezed == interiors ? _self.interiors : interiors // ignore: cast_nullable_to_non_nullable
as int?,currentYear: null == currentYear ? _self.currentYear : currentYear // ignore: cast_nullable_to_non_nullable
as int,finance: freezed == finance ? _self.finance : finance // ignore: cast_nullable_to_non_nullable
as Finance?,locality: freezed == locality ? _self.locality : locality // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PropertyInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCopyWith<$Res>? get finance {
    if (_self.finance == null) {
    return null;
  }

  return $FinanceCopyWith<$Res>(_self.finance!, (value) {
    return _then(_self.copyWith(finance: value));
  });
}
}


/// @nodoc
mixin _$Extra {

 String get kind; int get amount; bool get inAgreement;
/// Create a copy of Extra
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtraCopyWith<Extra> get copyWith => _$ExtraCopyWithImpl<Extra>(this as Extra, _$identity);

  /// Serializes this Extra to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Extra&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.inAgreement, inAgreement) || other.inAgreement == inAgreement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,amount,inAgreement);

@override
String toString() {
  return 'Extra(kind: $kind, amount: $amount, inAgreement: $inAgreement)';
}


}

/// @nodoc
abstract mixin class $ExtraCopyWith<$Res>  {
  factory $ExtraCopyWith(Extra value, $Res Function(Extra) _then) = _$ExtraCopyWithImpl;
@useResult
$Res call({
 String kind, int amount, bool inAgreement
});




}
/// @nodoc
class _$ExtraCopyWithImpl<$Res>
    implements $ExtraCopyWith<$Res> {
  _$ExtraCopyWithImpl(this._self, this._then);

  final Extra _self;
  final $Res Function(Extra) _then;

/// Create a copy of Extra
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? amount = null,Object? inAgreement = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,inAgreement: null == inAgreement ? _self.inAgreement : inAgreement // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Extra].
extension ExtraPatterns on Extra {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Extra value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Extra() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Extra value)  $default,){
final _that = this;
switch (_that) {
case _Extra():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Extra value)?  $default,){
final _that = this;
switch (_that) {
case _Extra() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kind,  int amount,  bool inAgreement)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Extra() when $default != null:
return $default(_that.kind,_that.amount,_that.inAgreement);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kind,  int amount,  bool inAgreement)  $default,) {final _that = this;
switch (_that) {
case _Extra():
return $default(_that.kind,_that.amount,_that.inAgreement);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kind,  int amount,  bool inAgreement)?  $default,) {final _that = this;
switch (_that) {
case _Extra() when $default != null:
return $default(_that.kind,_that.amount,_that.inAgreement);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Extra implements Extra {
  const _Extra({required this.kind, required this.amount, this.inAgreement = true});
  factory _Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);

@override final  String kind;
@override final  int amount;
@override@JsonKey() final  bool inAgreement;

/// Create a copy of Extra
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtraCopyWith<_Extra> get copyWith => __$ExtraCopyWithImpl<_Extra>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtraToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Extra&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.inAgreement, inAgreement) || other.inAgreement == inAgreement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,amount,inAgreement);

@override
String toString() {
  return 'Extra(kind: $kind, amount: $amount, inAgreement: $inAgreement)';
}


}

/// @nodoc
abstract mixin class _$ExtraCopyWith<$Res> implements $ExtraCopyWith<$Res> {
  factory _$ExtraCopyWith(_Extra value, $Res Function(_Extra) _then) = __$ExtraCopyWithImpl;
@override @useResult
$Res call({
 String kind, int amount, bool inAgreement
});




}
/// @nodoc
class __$ExtraCopyWithImpl<$Res>
    implements _$ExtraCopyWith<$Res> {
  __$ExtraCopyWithImpl(this._self, this._then);

  final _Extra _self;
  final $Res Function(_Extra) _then;

/// Create a copy of Extra
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? amount = null,Object? inAgreement = null,}) {
  return _then(_Extra(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,inAgreement: null == inAgreement ? _self.inAgreement : inAgreement // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Finance {

 bool get usingLoan; int get age; Employment get employment; int get netIncome; int get existingEmi; double? get ratePct; int? get tenureYears;/// Null means "not entered"; the funds_shortfall flag only fires when set.
 int? get ownFunds;
/// Create a copy of Finance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceCopyWith<Finance> get copyWith => _$FinanceCopyWithImpl<Finance>(this as Finance, _$identity);

  /// Serializes this Finance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Finance&&(identical(other.usingLoan, usingLoan) || other.usingLoan == usingLoan)&&(identical(other.age, age) || other.age == age)&&(identical(other.employment, employment) || other.employment == employment)&&(identical(other.netIncome, netIncome) || other.netIncome == netIncome)&&(identical(other.existingEmi, existingEmi) || other.existingEmi == existingEmi)&&(identical(other.ratePct, ratePct) || other.ratePct == ratePct)&&(identical(other.tenureYears, tenureYears) || other.tenureYears == tenureYears)&&(identical(other.ownFunds, ownFunds) || other.ownFunds == ownFunds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usingLoan,age,employment,netIncome,existingEmi,ratePct,tenureYears,ownFunds);

@override
String toString() {
  return 'Finance(usingLoan: $usingLoan, age: $age, employment: $employment, netIncome: $netIncome, existingEmi: $existingEmi, ratePct: $ratePct, tenureYears: $tenureYears, ownFunds: $ownFunds)';
}


}

/// @nodoc
abstract mixin class $FinanceCopyWith<$Res>  {
  factory $FinanceCopyWith(Finance value, $Res Function(Finance) _then) = _$FinanceCopyWithImpl;
@useResult
$Res call({
 bool usingLoan, int age, Employment employment, int netIncome, int existingEmi, double? ratePct, int? tenureYears, int? ownFunds
});




}
/// @nodoc
class _$FinanceCopyWithImpl<$Res>
    implements $FinanceCopyWith<$Res> {
  _$FinanceCopyWithImpl(this._self, this._then);

  final Finance _self;
  final $Res Function(Finance) _then;

/// Create a copy of Finance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usingLoan = null,Object? age = null,Object? employment = null,Object? netIncome = null,Object? existingEmi = null,Object? ratePct = freezed,Object? tenureYears = freezed,Object? ownFunds = freezed,}) {
  return _then(_self.copyWith(
usingLoan: null == usingLoan ? _self.usingLoan : usingLoan // ignore: cast_nullable_to_non_nullable
as bool,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,employment: null == employment ? _self.employment : employment // ignore: cast_nullable_to_non_nullable
as Employment,netIncome: null == netIncome ? _self.netIncome : netIncome // ignore: cast_nullable_to_non_nullable
as int,existingEmi: null == existingEmi ? _self.existingEmi : existingEmi // ignore: cast_nullable_to_non_nullable
as int,ratePct: freezed == ratePct ? _self.ratePct : ratePct // ignore: cast_nullable_to_non_nullable
as double?,tenureYears: freezed == tenureYears ? _self.tenureYears : tenureYears // ignore: cast_nullable_to_non_nullable
as int?,ownFunds: freezed == ownFunds ? _self.ownFunds : ownFunds // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Finance].
extension FinancePatterns on Finance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Finance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Finance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Finance value)  $default,){
final _that = this;
switch (_that) {
case _Finance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Finance value)?  $default,){
final _that = this;
switch (_that) {
case _Finance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool usingLoan,  int age,  Employment employment,  int netIncome,  int existingEmi,  double? ratePct,  int? tenureYears,  int? ownFunds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Finance() when $default != null:
return $default(_that.usingLoan,_that.age,_that.employment,_that.netIncome,_that.existingEmi,_that.ratePct,_that.tenureYears,_that.ownFunds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool usingLoan,  int age,  Employment employment,  int netIncome,  int existingEmi,  double? ratePct,  int? tenureYears,  int? ownFunds)  $default,) {final _that = this;
switch (_that) {
case _Finance():
return $default(_that.usingLoan,_that.age,_that.employment,_that.netIncome,_that.existingEmi,_that.ratePct,_that.tenureYears,_that.ownFunds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool usingLoan,  int age,  Employment employment,  int netIncome,  int existingEmi,  double? ratePct,  int? tenureYears,  int? ownFunds)?  $default,) {final _that = this;
switch (_that) {
case _Finance() when $default != null:
return $default(_that.usingLoan,_that.age,_that.employment,_that.netIncome,_that.existingEmi,_that.ratePct,_that.tenureYears,_that.ownFunds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Finance implements Finance {
  const _Finance({this.usingLoan = false, this.age = 0, this.employment = Employment.salaried, this.netIncome = 0, this.existingEmi = 0, this.ratePct, this.tenureYears, this.ownFunds});
  factory _Finance.fromJson(Map<String, dynamic> json) => _$FinanceFromJson(json);

@override@JsonKey() final  bool usingLoan;
@override@JsonKey() final  int age;
@override@JsonKey() final  Employment employment;
@override@JsonKey() final  int netIncome;
@override@JsonKey() final  int existingEmi;
@override final  double? ratePct;
@override final  int? tenureYears;
/// Null means "not entered"; the funds_shortfall flag only fires when set.
@override final  int? ownFunds;

/// Create a copy of Finance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceCopyWith<_Finance> get copyWith => __$FinanceCopyWithImpl<_Finance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Finance&&(identical(other.usingLoan, usingLoan) || other.usingLoan == usingLoan)&&(identical(other.age, age) || other.age == age)&&(identical(other.employment, employment) || other.employment == employment)&&(identical(other.netIncome, netIncome) || other.netIncome == netIncome)&&(identical(other.existingEmi, existingEmi) || other.existingEmi == existingEmi)&&(identical(other.ratePct, ratePct) || other.ratePct == ratePct)&&(identical(other.tenureYears, tenureYears) || other.tenureYears == tenureYears)&&(identical(other.ownFunds, ownFunds) || other.ownFunds == ownFunds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usingLoan,age,employment,netIncome,existingEmi,ratePct,tenureYears,ownFunds);

@override
String toString() {
  return 'Finance(usingLoan: $usingLoan, age: $age, employment: $employment, netIncome: $netIncome, existingEmi: $existingEmi, ratePct: $ratePct, tenureYears: $tenureYears, ownFunds: $ownFunds)';
}


}

/// @nodoc
abstract mixin class _$FinanceCopyWith<$Res> implements $FinanceCopyWith<$Res> {
  factory _$FinanceCopyWith(_Finance value, $Res Function(_Finance) _then) = __$FinanceCopyWithImpl;
@override @useResult
$Res call({
 bool usingLoan, int age, Employment employment, int netIncome, int existingEmi, double? ratePct, int? tenureYears, int? ownFunds
});




}
/// @nodoc
class __$FinanceCopyWithImpl<$Res>
    implements _$FinanceCopyWith<$Res> {
  __$FinanceCopyWithImpl(this._self, this._then);

  final _Finance _self;
  final $Res Function(_Finance) _then;

/// Create a copy of Finance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usingLoan = null,Object? age = null,Object? employment = null,Object? netIncome = null,Object? existingEmi = null,Object? ratePct = freezed,Object? tenureYears = freezed,Object? ownFunds = freezed,}) {
  return _then(_Finance(
usingLoan: null == usingLoan ? _self.usingLoan : usingLoan // ignore: cast_nullable_to_non_nullable
as bool,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,employment: null == employment ? _self.employment : employment // ignore: cast_nullable_to_non_nullable
as Employment,netIncome: null == netIncome ? _self.netIncome : netIncome // ignore: cast_nullable_to_non_nullable
as int,existingEmi: null == existingEmi ? _self.existingEmi : existingEmi // ignore: cast_nullable_to_non_nullable
as int,ratePct: freezed == ratePct ? _self.ratePct : ratePct // ignore: cast_nullable_to_non_nullable
as double?,tenureYears: freezed == tenureYears ? _self.tenureYears : tenureYears // ignore: cast_nullable_to_non_nullable
as int?,ownFunds: freezed == ownFunds ? _self.ownFunds : ownFunds // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
