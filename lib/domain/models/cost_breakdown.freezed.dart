// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cost_breakdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CostBreakdown {

/// Line items in computation order, keyed by reference-engine line key.
 Map<String, int> get lines; int get total; int get extraOverQuoted; double get extraPctOfQuoted; double get gstPctApplied; bool get affordableHousing; LoanResult get loan; int get ownFundsNeeded; bool get tdsApplicable; int get tdsAmount; int get sellerBankPayoff; PerSqft get perSqft; int get buildingAge; List<Flag> get flags;
/// Create a copy of CostBreakdown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CostBreakdownCopyWith<CostBreakdown> get copyWith => _$CostBreakdownCopyWithImpl<CostBreakdown>(this as CostBreakdown, _$identity);

  /// Serializes this CostBreakdown to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CostBreakdown&&const DeepCollectionEquality().equals(other.lines, lines)&&(identical(other.total, total) || other.total == total)&&(identical(other.extraOverQuoted, extraOverQuoted) || other.extraOverQuoted == extraOverQuoted)&&(identical(other.extraPctOfQuoted, extraPctOfQuoted) || other.extraPctOfQuoted == extraPctOfQuoted)&&(identical(other.gstPctApplied, gstPctApplied) || other.gstPctApplied == gstPctApplied)&&(identical(other.affordableHousing, affordableHousing) || other.affordableHousing == affordableHousing)&&(identical(other.loan, loan) || other.loan == loan)&&(identical(other.ownFundsNeeded, ownFundsNeeded) || other.ownFundsNeeded == ownFundsNeeded)&&(identical(other.tdsApplicable, tdsApplicable) || other.tdsApplicable == tdsApplicable)&&(identical(other.tdsAmount, tdsAmount) || other.tdsAmount == tdsAmount)&&(identical(other.sellerBankPayoff, sellerBankPayoff) || other.sellerBankPayoff == sellerBankPayoff)&&(identical(other.perSqft, perSqft) || other.perSqft == perSqft)&&(identical(other.buildingAge, buildingAge) || other.buildingAge == buildingAge)&&const DeepCollectionEquality().equals(other.flags, flags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(lines),total,extraOverQuoted,extraPctOfQuoted,gstPctApplied,affordableHousing,loan,ownFundsNeeded,tdsApplicable,tdsAmount,sellerBankPayoff,perSqft,buildingAge,const DeepCollectionEquality().hash(flags));

@override
String toString() {
  return 'CostBreakdown(lines: $lines, total: $total, extraOverQuoted: $extraOverQuoted, extraPctOfQuoted: $extraPctOfQuoted, gstPctApplied: $gstPctApplied, affordableHousing: $affordableHousing, loan: $loan, ownFundsNeeded: $ownFundsNeeded, tdsApplicable: $tdsApplicable, tdsAmount: $tdsAmount, sellerBankPayoff: $sellerBankPayoff, perSqft: $perSqft, buildingAge: $buildingAge, flags: $flags)';
}


}

/// @nodoc
abstract mixin class $CostBreakdownCopyWith<$Res>  {
  factory $CostBreakdownCopyWith(CostBreakdown value, $Res Function(CostBreakdown) _then) = _$CostBreakdownCopyWithImpl;
@useResult
$Res call({
 Map<String, int> lines, int total, int extraOverQuoted, double extraPctOfQuoted, double gstPctApplied, bool affordableHousing, LoanResult loan, int ownFundsNeeded, bool tdsApplicable, int tdsAmount, int sellerBankPayoff, PerSqft perSqft, int buildingAge, List<Flag> flags
});


$LoanResultCopyWith<$Res> get loan;$PerSqftCopyWith<$Res> get perSqft;

}
/// @nodoc
class _$CostBreakdownCopyWithImpl<$Res>
    implements $CostBreakdownCopyWith<$Res> {
  _$CostBreakdownCopyWithImpl(this._self, this._then);

  final CostBreakdown _self;
  final $Res Function(CostBreakdown) _then;

/// Create a copy of CostBreakdown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,Object? total = null,Object? extraOverQuoted = null,Object? extraPctOfQuoted = null,Object? gstPctApplied = null,Object? affordableHousing = null,Object? loan = null,Object? ownFundsNeeded = null,Object? tdsApplicable = null,Object? tdsAmount = null,Object? sellerBankPayoff = null,Object? perSqft = null,Object? buildingAge = null,Object? flags = null,}) {
  return _then(_self.copyWith(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as Map<String, int>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,extraOverQuoted: null == extraOverQuoted ? _self.extraOverQuoted : extraOverQuoted // ignore: cast_nullable_to_non_nullable
as int,extraPctOfQuoted: null == extraPctOfQuoted ? _self.extraPctOfQuoted : extraPctOfQuoted // ignore: cast_nullable_to_non_nullable
as double,gstPctApplied: null == gstPctApplied ? _self.gstPctApplied : gstPctApplied // ignore: cast_nullable_to_non_nullable
as double,affordableHousing: null == affordableHousing ? _self.affordableHousing : affordableHousing // ignore: cast_nullable_to_non_nullable
as bool,loan: null == loan ? _self.loan : loan // ignore: cast_nullable_to_non_nullable
as LoanResult,ownFundsNeeded: null == ownFundsNeeded ? _self.ownFundsNeeded : ownFundsNeeded // ignore: cast_nullable_to_non_nullable
as int,tdsApplicable: null == tdsApplicable ? _self.tdsApplicable : tdsApplicable // ignore: cast_nullable_to_non_nullable
as bool,tdsAmount: null == tdsAmount ? _self.tdsAmount : tdsAmount // ignore: cast_nullable_to_non_nullable
as int,sellerBankPayoff: null == sellerBankPayoff ? _self.sellerBankPayoff : sellerBankPayoff // ignore: cast_nullable_to_non_nullable
as int,perSqft: null == perSqft ? _self.perSqft : perSqft // ignore: cast_nullable_to_non_nullable
as PerSqft,buildingAge: null == buildingAge ? _self.buildingAge : buildingAge // ignore: cast_nullable_to_non_nullable
as int,flags: null == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as List<Flag>,
  ));
}
/// Create a copy of CostBreakdown
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoanResultCopyWith<$Res> get loan {
  
  return $LoanResultCopyWith<$Res>(_self.loan, (value) {
    return _then(_self.copyWith(loan: value));
  });
}/// Create a copy of CostBreakdown
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerSqftCopyWith<$Res> get perSqft {
  
  return $PerSqftCopyWith<$Res>(_self.perSqft, (value) {
    return _then(_self.copyWith(perSqft: value));
  });
}
}


/// Adds pattern-matching-related methods to [CostBreakdown].
extension CostBreakdownPatterns on CostBreakdown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CostBreakdown value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CostBreakdown() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CostBreakdown value)  $default,){
final _that = this;
switch (_that) {
case _CostBreakdown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CostBreakdown value)?  $default,){
final _that = this;
switch (_that) {
case _CostBreakdown() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, int> lines,  int total,  int extraOverQuoted,  double extraPctOfQuoted,  double gstPctApplied,  bool affordableHousing,  LoanResult loan,  int ownFundsNeeded,  bool tdsApplicable,  int tdsAmount,  int sellerBankPayoff,  PerSqft perSqft,  int buildingAge,  List<Flag> flags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CostBreakdown() when $default != null:
return $default(_that.lines,_that.total,_that.extraOverQuoted,_that.extraPctOfQuoted,_that.gstPctApplied,_that.affordableHousing,_that.loan,_that.ownFundsNeeded,_that.tdsApplicable,_that.tdsAmount,_that.sellerBankPayoff,_that.perSqft,_that.buildingAge,_that.flags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, int> lines,  int total,  int extraOverQuoted,  double extraPctOfQuoted,  double gstPctApplied,  bool affordableHousing,  LoanResult loan,  int ownFundsNeeded,  bool tdsApplicable,  int tdsAmount,  int sellerBankPayoff,  PerSqft perSqft,  int buildingAge,  List<Flag> flags)  $default,) {final _that = this;
switch (_that) {
case _CostBreakdown():
return $default(_that.lines,_that.total,_that.extraOverQuoted,_that.extraPctOfQuoted,_that.gstPctApplied,_that.affordableHousing,_that.loan,_that.ownFundsNeeded,_that.tdsApplicable,_that.tdsAmount,_that.sellerBankPayoff,_that.perSqft,_that.buildingAge,_that.flags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, int> lines,  int total,  int extraOverQuoted,  double extraPctOfQuoted,  double gstPctApplied,  bool affordableHousing,  LoanResult loan,  int ownFundsNeeded,  bool tdsApplicable,  int tdsAmount,  int sellerBankPayoff,  PerSqft perSqft,  int buildingAge,  List<Flag> flags)?  $default,) {final _that = this;
switch (_that) {
case _CostBreakdown() when $default != null:
return $default(_that.lines,_that.total,_that.extraOverQuoted,_that.extraPctOfQuoted,_that.gstPctApplied,_that.affordableHousing,_that.loan,_that.ownFundsNeeded,_that.tdsApplicable,_that.tdsAmount,_that.sellerBankPayoff,_that.perSqft,_that.buildingAge,_that.flags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CostBreakdown implements CostBreakdown {
  const _CostBreakdown({required final  Map<String, int> lines, required this.total, required this.extraOverQuoted, required this.extraPctOfQuoted, required this.gstPctApplied, required this.affordableHousing, required this.loan, required this.ownFundsNeeded, required this.tdsApplicable, required this.tdsAmount, required this.sellerBankPayoff, required this.perSqft, required this.buildingAge, required final  List<Flag> flags}): _lines = lines,_flags = flags;
  factory _CostBreakdown.fromJson(Map<String, dynamic> json) => _$CostBreakdownFromJson(json);

/// Line items in computation order, keyed by reference-engine line key.
 final  Map<String, int> _lines;
/// Line items in computation order, keyed by reference-engine line key.
@override Map<String, int> get lines {
  if (_lines is EqualUnmodifiableMapView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_lines);
}

@override final  int total;
@override final  int extraOverQuoted;
@override final  double extraPctOfQuoted;
@override final  double gstPctApplied;
@override final  bool affordableHousing;
@override final  LoanResult loan;
@override final  int ownFundsNeeded;
@override final  bool tdsApplicable;
@override final  int tdsAmount;
@override final  int sellerBankPayoff;
@override final  PerSqft perSqft;
@override final  int buildingAge;
 final  List<Flag> _flags;
@override List<Flag> get flags {
  if (_flags is EqualUnmodifiableListView) return _flags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flags);
}


/// Create a copy of CostBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CostBreakdownCopyWith<_CostBreakdown> get copyWith => __$CostBreakdownCopyWithImpl<_CostBreakdown>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CostBreakdownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CostBreakdown&&const DeepCollectionEquality().equals(other._lines, _lines)&&(identical(other.total, total) || other.total == total)&&(identical(other.extraOverQuoted, extraOverQuoted) || other.extraOverQuoted == extraOverQuoted)&&(identical(other.extraPctOfQuoted, extraPctOfQuoted) || other.extraPctOfQuoted == extraPctOfQuoted)&&(identical(other.gstPctApplied, gstPctApplied) || other.gstPctApplied == gstPctApplied)&&(identical(other.affordableHousing, affordableHousing) || other.affordableHousing == affordableHousing)&&(identical(other.loan, loan) || other.loan == loan)&&(identical(other.ownFundsNeeded, ownFundsNeeded) || other.ownFundsNeeded == ownFundsNeeded)&&(identical(other.tdsApplicable, tdsApplicable) || other.tdsApplicable == tdsApplicable)&&(identical(other.tdsAmount, tdsAmount) || other.tdsAmount == tdsAmount)&&(identical(other.sellerBankPayoff, sellerBankPayoff) || other.sellerBankPayoff == sellerBankPayoff)&&(identical(other.perSqft, perSqft) || other.perSqft == perSqft)&&(identical(other.buildingAge, buildingAge) || other.buildingAge == buildingAge)&&const DeepCollectionEquality().equals(other._flags, _flags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines),total,extraOverQuoted,extraPctOfQuoted,gstPctApplied,affordableHousing,loan,ownFundsNeeded,tdsApplicable,tdsAmount,sellerBankPayoff,perSqft,buildingAge,const DeepCollectionEquality().hash(_flags));

@override
String toString() {
  return 'CostBreakdown(lines: $lines, total: $total, extraOverQuoted: $extraOverQuoted, extraPctOfQuoted: $extraPctOfQuoted, gstPctApplied: $gstPctApplied, affordableHousing: $affordableHousing, loan: $loan, ownFundsNeeded: $ownFundsNeeded, tdsApplicable: $tdsApplicable, tdsAmount: $tdsAmount, sellerBankPayoff: $sellerBankPayoff, perSqft: $perSqft, buildingAge: $buildingAge, flags: $flags)';
}


}

/// @nodoc
abstract mixin class _$CostBreakdownCopyWith<$Res> implements $CostBreakdownCopyWith<$Res> {
  factory _$CostBreakdownCopyWith(_CostBreakdown value, $Res Function(_CostBreakdown) _then) = __$CostBreakdownCopyWithImpl;
@override @useResult
$Res call({
 Map<String, int> lines, int total, int extraOverQuoted, double extraPctOfQuoted, double gstPctApplied, bool affordableHousing, LoanResult loan, int ownFundsNeeded, bool tdsApplicable, int tdsAmount, int sellerBankPayoff, PerSqft perSqft, int buildingAge, List<Flag> flags
});


@override $LoanResultCopyWith<$Res> get loan;@override $PerSqftCopyWith<$Res> get perSqft;

}
/// @nodoc
class __$CostBreakdownCopyWithImpl<$Res>
    implements _$CostBreakdownCopyWith<$Res> {
  __$CostBreakdownCopyWithImpl(this._self, this._then);

  final _CostBreakdown _self;
  final $Res Function(_CostBreakdown) _then;

/// Create a copy of CostBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,Object? total = null,Object? extraOverQuoted = null,Object? extraPctOfQuoted = null,Object? gstPctApplied = null,Object? affordableHousing = null,Object? loan = null,Object? ownFundsNeeded = null,Object? tdsApplicable = null,Object? tdsAmount = null,Object? sellerBankPayoff = null,Object? perSqft = null,Object? buildingAge = null,Object? flags = null,}) {
  return _then(_CostBreakdown(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as Map<String, int>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,extraOverQuoted: null == extraOverQuoted ? _self.extraOverQuoted : extraOverQuoted // ignore: cast_nullable_to_non_nullable
as int,extraPctOfQuoted: null == extraPctOfQuoted ? _self.extraPctOfQuoted : extraPctOfQuoted // ignore: cast_nullable_to_non_nullable
as double,gstPctApplied: null == gstPctApplied ? _self.gstPctApplied : gstPctApplied // ignore: cast_nullable_to_non_nullable
as double,affordableHousing: null == affordableHousing ? _self.affordableHousing : affordableHousing // ignore: cast_nullable_to_non_nullable
as bool,loan: null == loan ? _self.loan : loan // ignore: cast_nullable_to_non_nullable
as LoanResult,ownFundsNeeded: null == ownFundsNeeded ? _self.ownFundsNeeded : ownFundsNeeded // ignore: cast_nullable_to_non_nullable
as int,tdsApplicable: null == tdsApplicable ? _self.tdsApplicable : tdsApplicable // ignore: cast_nullable_to_non_nullable
as bool,tdsAmount: null == tdsAmount ? _self.tdsAmount : tdsAmount // ignore: cast_nullable_to_non_nullable
as int,sellerBankPayoff: null == sellerBankPayoff ? _self.sellerBankPayoff : sellerBankPayoff // ignore: cast_nullable_to_non_nullable
as int,perSqft: null == perSqft ? _self.perSqft : perSqft // ignore: cast_nullable_to_non_nullable
as PerSqft,buildingAge: null == buildingAge ? _self.buildingAge : buildingAge // ignore: cast_nullable_to_non_nullable
as int,flags: null == flags ? _self._flags : flags // ignore: cast_nullable_to_non_nullable
as List<Flag>,
  ));
}

/// Create a copy of CostBreakdown
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoanResultCopyWith<$Res> get loan {
  
  return $LoanResultCopyWith<$Res>(_self.loan, (value) {
    return _then(_self.copyWith(loan: value));
  });
}/// Create a copy of CostBreakdown
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerSqftCopyWith<$Res> get perSqft {
  
  return $PerSqftCopyWith<$Res>(_self.perSqft, (value) {
    return _then(_self.copyWith(perSqft: value));
  });
}
}


/// @nodoc
mixin _$LoanResult {

 int get loan; int get tenureYears;/// `no_loan`, `ltv` or `income_<tenure limit>`.
 String get binding; int get emi; int get loanByIncome; int get loanByLtv;@JsonKey(includeIfNull: true) int? get residualLifeYears;
/// Create a copy of LoanResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoanResultCopyWith<LoanResult> get copyWith => _$LoanResultCopyWithImpl<LoanResult>(this as LoanResult, _$identity);

  /// Serializes this LoanResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoanResult&&(identical(other.loan, loan) || other.loan == loan)&&(identical(other.tenureYears, tenureYears) || other.tenureYears == tenureYears)&&(identical(other.binding, binding) || other.binding == binding)&&(identical(other.emi, emi) || other.emi == emi)&&(identical(other.loanByIncome, loanByIncome) || other.loanByIncome == loanByIncome)&&(identical(other.loanByLtv, loanByLtv) || other.loanByLtv == loanByLtv)&&(identical(other.residualLifeYears, residualLifeYears) || other.residualLifeYears == residualLifeYears));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,loan,tenureYears,binding,emi,loanByIncome,loanByLtv,residualLifeYears);

@override
String toString() {
  return 'LoanResult(loan: $loan, tenureYears: $tenureYears, binding: $binding, emi: $emi, loanByIncome: $loanByIncome, loanByLtv: $loanByLtv, residualLifeYears: $residualLifeYears)';
}


}

/// @nodoc
abstract mixin class $LoanResultCopyWith<$Res>  {
  factory $LoanResultCopyWith(LoanResult value, $Res Function(LoanResult) _then) = _$LoanResultCopyWithImpl;
@useResult
$Res call({
 int loan, int tenureYears, String binding, int emi, int loanByIncome, int loanByLtv,@JsonKey(includeIfNull: true) int? residualLifeYears
});




}
/// @nodoc
class _$LoanResultCopyWithImpl<$Res>
    implements $LoanResultCopyWith<$Res> {
  _$LoanResultCopyWithImpl(this._self, this._then);

  final LoanResult _self;
  final $Res Function(LoanResult) _then;

/// Create a copy of LoanResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loan = null,Object? tenureYears = null,Object? binding = null,Object? emi = null,Object? loanByIncome = null,Object? loanByLtv = null,Object? residualLifeYears = freezed,}) {
  return _then(_self.copyWith(
loan: null == loan ? _self.loan : loan // ignore: cast_nullable_to_non_nullable
as int,tenureYears: null == tenureYears ? _self.tenureYears : tenureYears // ignore: cast_nullable_to_non_nullable
as int,binding: null == binding ? _self.binding : binding // ignore: cast_nullable_to_non_nullable
as String,emi: null == emi ? _self.emi : emi // ignore: cast_nullable_to_non_nullable
as int,loanByIncome: null == loanByIncome ? _self.loanByIncome : loanByIncome // ignore: cast_nullable_to_non_nullable
as int,loanByLtv: null == loanByLtv ? _self.loanByLtv : loanByLtv // ignore: cast_nullable_to_non_nullable
as int,residualLifeYears: freezed == residualLifeYears ? _self.residualLifeYears : residualLifeYears // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoanResult].
extension LoanResultPatterns on LoanResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoanResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoanResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoanResult value)  $default,){
final _that = this;
switch (_that) {
case _LoanResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoanResult value)?  $default,){
final _that = this;
switch (_that) {
case _LoanResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int loan,  int tenureYears,  String binding,  int emi,  int loanByIncome,  int loanByLtv, @JsonKey(includeIfNull: true)  int? residualLifeYears)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoanResult() when $default != null:
return $default(_that.loan,_that.tenureYears,_that.binding,_that.emi,_that.loanByIncome,_that.loanByLtv,_that.residualLifeYears);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int loan,  int tenureYears,  String binding,  int emi,  int loanByIncome,  int loanByLtv, @JsonKey(includeIfNull: true)  int? residualLifeYears)  $default,) {final _that = this;
switch (_that) {
case _LoanResult():
return $default(_that.loan,_that.tenureYears,_that.binding,_that.emi,_that.loanByIncome,_that.loanByLtv,_that.residualLifeYears);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int loan,  int tenureYears,  String binding,  int emi,  int loanByIncome,  int loanByLtv, @JsonKey(includeIfNull: true)  int? residualLifeYears)?  $default,) {final _that = this;
switch (_that) {
case _LoanResult() when $default != null:
return $default(_that.loan,_that.tenureYears,_that.binding,_that.emi,_that.loanByIncome,_that.loanByLtv,_that.residualLifeYears);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoanResult extends LoanResult {
  const _LoanResult({required this.loan, required this.tenureYears, required this.binding, required this.emi, required this.loanByIncome, required this.loanByLtv, @JsonKey(includeIfNull: true) this.residualLifeYears}): super._();
  factory _LoanResult.fromJson(Map<String, dynamic> json) => _$LoanResultFromJson(json);

@override final  int loan;
@override final  int tenureYears;
/// `no_loan`, `ltv` or `income_<tenure limit>`.
@override final  String binding;
@override final  int emi;
@override final  int loanByIncome;
@override final  int loanByLtv;
@override@JsonKey(includeIfNull: true) final  int? residualLifeYears;

/// Create a copy of LoanResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoanResultCopyWith<_LoanResult> get copyWith => __$LoanResultCopyWithImpl<_LoanResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoanResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoanResult&&(identical(other.loan, loan) || other.loan == loan)&&(identical(other.tenureYears, tenureYears) || other.tenureYears == tenureYears)&&(identical(other.binding, binding) || other.binding == binding)&&(identical(other.emi, emi) || other.emi == emi)&&(identical(other.loanByIncome, loanByIncome) || other.loanByIncome == loanByIncome)&&(identical(other.loanByLtv, loanByLtv) || other.loanByLtv == loanByLtv)&&(identical(other.residualLifeYears, residualLifeYears) || other.residualLifeYears == residualLifeYears));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,loan,tenureYears,binding,emi,loanByIncome,loanByLtv,residualLifeYears);

@override
String toString() {
  return 'LoanResult(loan: $loan, tenureYears: $tenureYears, binding: $binding, emi: $emi, loanByIncome: $loanByIncome, loanByLtv: $loanByLtv, residualLifeYears: $residualLifeYears)';
}


}

/// @nodoc
abstract mixin class _$LoanResultCopyWith<$Res> implements $LoanResultCopyWith<$Res> {
  factory _$LoanResultCopyWith(_LoanResult value, $Res Function(_LoanResult) _then) = __$LoanResultCopyWithImpl;
@override @useResult
$Res call({
 int loan, int tenureYears, String binding, int emi, int loanByIncome, int loanByLtv,@JsonKey(includeIfNull: true) int? residualLifeYears
});




}
/// @nodoc
class __$LoanResultCopyWithImpl<$Res>
    implements _$LoanResultCopyWith<$Res> {
  __$LoanResultCopyWithImpl(this._self, this._then);

  final _LoanResult _self;
  final $Res Function(_LoanResult) _then;

/// Create a copy of LoanResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loan = null,Object? tenureYears = null,Object? binding = null,Object? emi = null,Object? loanByIncome = null,Object? loanByLtv = null,Object? residualLifeYears = freezed,}) {
  return _then(_LoanResult(
loan: null == loan ? _self.loan : loan // ignore: cast_nullable_to_non_nullable
as int,tenureYears: null == tenureYears ? _self.tenureYears : tenureYears // ignore: cast_nullable_to_non_nullable
as int,binding: null == binding ? _self.binding : binding // ignore: cast_nullable_to_non_nullable
as String,emi: null == emi ? _self.emi : emi // ignore: cast_nullable_to_non_nullable
as int,loanByIncome: null == loanByIncome ? _self.loanByIncome : loanByIncome // ignore: cast_nullable_to_non_nullable
as int,loanByLtv: null == loanByLtv ? _self.loanByLtv : loanByLtv // ignore: cast_nullable_to_non_nullable
as int,residualLifeYears: freezed == residualLifeYears ? _self.residualLifeYears : residualLifeYears // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PerSqft {

 int get quotedCarpet; int get quotedBuiltup; int get allInCarpet; int get allInBuiltup; double get loadingPct;
/// Create a copy of PerSqft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerSqftCopyWith<PerSqft> get copyWith => _$PerSqftCopyWithImpl<PerSqft>(this as PerSqft, _$identity);

  /// Serializes this PerSqft to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerSqft&&(identical(other.quotedCarpet, quotedCarpet) || other.quotedCarpet == quotedCarpet)&&(identical(other.quotedBuiltup, quotedBuiltup) || other.quotedBuiltup == quotedBuiltup)&&(identical(other.allInCarpet, allInCarpet) || other.allInCarpet == allInCarpet)&&(identical(other.allInBuiltup, allInBuiltup) || other.allInBuiltup == allInBuiltup)&&(identical(other.loadingPct, loadingPct) || other.loadingPct == loadingPct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quotedCarpet,quotedBuiltup,allInCarpet,allInBuiltup,loadingPct);

@override
String toString() {
  return 'PerSqft(quotedCarpet: $quotedCarpet, quotedBuiltup: $quotedBuiltup, allInCarpet: $allInCarpet, allInBuiltup: $allInBuiltup, loadingPct: $loadingPct)';
}


}

/// @nodoc
abstract mixin class $PerSqftCopyWith<$Res>  {
  factory $PerSqftCopyWith(PerSqft value, $Res Function(PerSqft) _then) = _$PerSqftCopyWithImpl;
@useResult
$Res call({
 int quotedCarpet, int quotedBuiltup, int allInCarpet, int allInBuiltup, double loadingPct
});




}
/// @nodoc
class _$PerSqftCopyWithImpl<$Res>
    implements $PerSqftCopyWith<$Res> {
  _$PerSqftCopyWithImpl(this._self, this._then);

  final PerSqft _self;
  final $Res Function(PerSqft) _then;

/// Create a copy of PerSqft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quotedCarpet = null,Object? quotedBuiltup = null,Object? allInCarpet = null,Object? allInBuiltup = null,Object? loadingPct = null,}) {
  return _then(_self.copyWith(
quotedCarpet: null == quotedCarpet ? _self.quotedCarpet : quotedCarpet // ignore: cast_nullable_to_non_nullable
as int,quotedBuiltup: null == quotedBuiltup ? _self.quotedBuiltup : quotedBuiltup // ignore: cast_nullable_to_non_nullable
as int,allInCarpet: null == allInCarpet ? _self.allInCarpet : allInCarpet // ignore: cast_nullable_to_non_nullable
as int,allInBuiltup: null == allInBuiltup ? _self.allInBuiltup : allInBuiltup // ignore: cast_nullable_to_non_nullable
as int,loadingPct: null == loadingPct ? _self.loadingPct : loadingPct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PerSqft].
extension PerSqftPatterns on PerSqft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PerSqft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PerSqft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PerSqft value)  $default,){
final _that = this;
switch (_that) {
case _PerSqft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PerSqft value)?  $default,){
final _that = this;
switch (_that) {
case _PerSqft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int quotedCarpet,  int quotedBuiltup,  int allInCarpet,  int allInBuiltup,  double loadingPct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PerSqft() when $default != null:
return $default(_that.quotedCarpet,_that.quotedBuiltup,_that.allInCarpet,_that.allInBuiltup,_that.loadingPct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int quotedCarpet,  int quotedBuiltup,  int allInCarpet,  int allInBuiltup,  double loadingPct)  $default,) {final _that = this;
switch (_that) {
case _PerSqft():
return $default(_that.quotedCarpet,_that.quotedBuiltup,_that.allInCarpet,_that.allInBuiltup,_that.loadingPct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int quotedCarpet,  int quotedBuiltup,  int allInCarpet,  int allInBuiltup,  double loadingPct)?  $default,) {final _that = this;
switch (_that) {
case _PerSqft() when $default != null:
return $default(_that.quotedCarpet,_that.quotedBuiltup,_that.allInCarpet,_that.allInBuiltup,_that.loadingPct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PerSqft implements PerSqft {
  const _PerSqft({required this.quotedCarpet, required this.quotedBuiltup, required this.allInCarpet, required this.allInBuiltup, required this.loadingPct});
  factory _PerSqft.fromJson(Map<String, dynamic> json) => _$PerSqftFromJson(json);

@override final  int quotedCarpet;
@override final  int quotedBuiltup;
@override final  int allInCarpet;
@override final  int allInBuiltup;
@override final  double loadingPct;

/// Create a copy of PerSqft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerSqftCopyWith<_PerSqft> get copyWith => __$PerSqftCopyWithImpl<_PerSqft>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PerSqftToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PerSqft&&(identical(other.quotedCarpet, quotedCarpet) || other.quotedCarpet == quotedCarpet)&&(identical(other.quotedBuiltup, quotedBuiltup) || other.quotedBuiltup == quotedBuiltup)&&(identical(other.allInCarpet, allInCarpet) || other.allInCarpet == allInCarpet)&&(identical(other.allInBuiltup, allInBuiltup) || other.allInBuiltup == allInBuiltup)&&(identical(other.loadingPct, loadingPct) || other.loadingPct == loadingPct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quotedCarpet,quotedBuiltup,allInCarpet,allInBuiltup,loadingPct);

@override
String toString() {
  return 'PerSqft(quotedCarpet: $quotedCarpet, quotedBuiltup: $quotedBuiltup, allInCarpet: $allInCarpet, allInBuiltup: $allInBuiltup, loadingPct: $loadingPct)';
}


}

/// @nodoc
abstract mixin class _$PerSqftCopyWith<$Res> implements $PerSqftCopyWith<$Res> {
  factory _$PerSqftCopyWith(_PerSqft value, $Res Function(_PerSqft) _then) = __$PerSqftCopyWithImpl;
@override @useResult
$Res call({
 int quotedCarpet, int quotedBuiltup, int allInCarpet, int allInBuiltup, double loadingPct
});




}
/// @nodoc
class __$PerSqftCopyWithImpl<$Res>
    implements _$PerSqftCopyWith<$Res> {
  __$PerSqftCopyWithImpl(this._self, this._then);

  final _PerSqft _self;
  final $Res Function(_PerSqft) _then;

/// Create a copy of PerSqft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quotedCarpet = null,Object? quotedBuiltup = null,Object? allInCarpet = null,Object? allInBuiltup = null,Object? loadingPct = null,}) {
  return _then(_PerSqft(
quotedCarpet: null == quotedCarpet ? _self.quotedCarpet : quotedCarpet // ignore: cast_nullable_to_non_nullable
as int,quotedBuiltup: null == quotedBuiltup ? _self.quotedBuiltup : quotedBuiltup // ignore: cast_nullable_to_non_nullable
as int,allInCarpet: null == allInCarpet ? _self.allInCarpet : allInCarpet // ignore: cast_nullable_to_non_nullable
as int,allInBuiltup: null == allInBuiltup ? _self.allInBuiltup : allInBuiltup // ignore: cast_nullable_to_non_nullable
as int,loadingPct: null == loadingPct ? _self.loadingPct : loadingPct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Flag {

 String get id; FlagSeverity get severity;
/// Create a copy of Flag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlagCopyWith<Flag> get copyWith => _$FlagCopyWithImpl<Flag>(this as Flag, _$identity);

  /// Serializes this Flag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Flag&&(identical(other.id, id) || other.id == id)&&(identical(other.severity, severity) || other.severity == severity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,severity);

@override
String toString() {
  return 'Flag(id: $id, severity: $severity)';
}


}

/// @nodoc
abstract mixin class $FlagCopyWith<$Res>  {
  factory $FlagCopyWith(Flag value, $Res Function(Flag) _then) = _$FlagCopyWithImpl;
@useResult
$Res call({
 String id, FlagSeverity severity
});




}
/// @nodoc
class _$FlagCopyWithImpl<$Res>
    implements $FlagCopyWith<$Res> {
  _$FlagCopyWithImpl(this._self, this._then);

  final Flag _self;
  final $Res Function(Flag) _then;

/// Create a copy of Flag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? severity = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as FlagSeverity,
  ));
}

}


/// Adds pattern-matching-related methods to [Flag].
extension FlagPatterns on Flag {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Flag value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Flag() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Flag value)  $default,){
final _that = this;
switch (_that) {
case _Flag():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Flag value)?  $default,){
final _that = this;
switch (_that) {
case _Flag() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  FlagSeverity severity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Flag() when $default != null:
return $default(_that.id,_that.severity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  FlagSeverity severity)  $default,) {final _that = this;
switch (_that) {
case _Flag():
return $default(_that.id,_that.severity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  FlagSeverity severity)?  $default,) {final _that = this;
switch (_that) {
case _Flag() when $default != null:
return $default(_that.id,_that.severity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Flag implements Flag {
  const _Flag({required this.id, required this.severity});
  factory _Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);

@override final  String id;
@override final  FlagSeverity severity;

/// Create a copy of Flag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlagCopyWith<_Flag> get copyWith => __$FlagCopyWithImpl<_Flag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlagToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Flag&&(identical(other.id, id) || other.id == id)&&(identical(other.severity, severity) || other.severity == severity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,severity);

@override
String toString() {
  return 'Flag(id: $id, severity: $severity)';
}


}

/// @nodoc
abstract mixin class _$FlagCopyWith<$Res> implements $FlagCopyWith<$Res> {
  factory _$FlagCopyWith(_Flag value, $Res Function(_Flag) _then) = __$FlagCopyWithImpl;
@override @useResult
$Res call({
 String id, FlagSeverity severity
});




}
/// @nodoc
class __$FlagCopyWithImpl<$Res>
    implements _$FlagCopyWith<$Res> {
  __$FlagCopyWithImpl(this._self, this._then);

  final _Flag _self;
  final $Res Function(_Flag) _then;

/// Create a copy of Flag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? severity = null,}) {
  return _then(_Flag(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as FlagSeverity,
  ));
}


}

/// @nodoc
mixin _$BudgetResult {

 int get maxPrice; CostBreakdown get breakdown;/// True when a GST slab boundary is within the edge band of the answer.
 bool get nearGstSlab;
/// Create a copy of BudgetResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BudgetResultCopyWith<BudgetResult> get copyWith => _$BudgetResultCopyWithImpl<BudgetResult>(this as BudgetResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BudgetResult&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.breakdown, breakdown) || other.breakdown == breakdown)&&(identical(other.nearGstSlab, nearGstSlab) || other.nearGstSlab == nearGstSlab));
}


@override
int get hashCode => Object.hash(runtimeType,maxPrice,breakdown,nearGstSlab);

@override
String toString() {
  return 'BudgetResult(maxPrice: $maxPrice, breakdown: $breakdown, nearGstSlab: $nearGstSlab)';
}


}

/// @nodoc
abstract mixin class $BudgetResultCopyWith<$Res>  {
  factory $BudgetResultCopyWith(BudgetResult value, $Res Function(BudgetResult) _then) = _$BudgetResultCopyWithImpl;
@useResult
$Res call({
 int maxPrice, CostBreakdown breakdown, bool nearGstSlab
});


$CostBreakdownCopyWith<$Res> get breakdown;

}
/// @nodoc
class _$BudgetResultCopyWithImpl<$Res>
    implements $BudgetResultCopyWith<$Res> {
  _$BudgetResultCopyWithImpl(this._self, this._then);

  final BudgetResult _self;
  final $Res Function(BudgetResult) _then;

/// Create a copy of BudgetResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxPrice = null,Object? breakdown = null,Object? nearGstSlab = null,}) {
  return _then(_self.copyWith(
maxPrice: null == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as int,breakdown: null == breakdown ? _self.breakdown : breakdown // ignore: cast_nullable_to_non_nullable
as CostBreakdown,nearGstSlab: null == nearGstSlab ? _self.nearGstSlab : nearGstSlab // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of BudgetResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CostBreakdownCopyWith<$Res> get breakdown {
  
  return $CostBreakdownCopyWith<$Res>(_self.breakdown, (value) {
    return _then(_self.copyWith(breakdown: value));
  });
}
}


/// Adds pattern-matching-related methods to [BudgetResult].
extension BudgetResultPatterns on BudgetResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BudgetResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BudgetResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BudgetResult value)  $default,){
final _that = this;
switch (_that) {
case _BudgetResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BudgetResult value)?  $default,){
final _that = this;
switch (_that) {
case _BudgetResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int maxPrice,  CostBreakdown breakdown,  bool nearGstSlab)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BudgetResult() when $default != null:
return $default(_that.maxPrice,_that.breakdown,_that.nearGstSlab);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int maxPrice,  CostBreakdown breakdown,  bool nearGstSlab)  $default,) {final _that = this;
switch (_that) {
case _BudgetResult():
return $default(_that.maxPrice,_that.breakdown,_that.nearGstSlab);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int maxPrice,  CostBreakdown breakdown,  bool nearGstSlab)?  $default,) {final _that = this;
switch (_that) {
case _BudgetResult() when $default != null:
return $default(_that.maxPrice,_that.breakdown,_that.nearGstSlab);case _:
  return null;

}
}

}

/// @nodoc


class _BudgetResult implements BudgetResult {
  const _BudgetResult({required this.maxPrice, required this.breakdown, required this.nearGstSlab});
  

@override final  int maxPrice;
@override final  CostBreakdown breakdown;
/// True when a GST slab boundary is within the edge band of the answer.
@override final  bool nearGstSlab;

/// Create a copy of BudgetResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BudgetResultCopyWith<_BudgetResult> get copyWith => __$BudgetResultCopyWithImpl<_BudgetResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BudgetResult&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.breakdown, breakdown) || other.breakdown == breakdown)&&(identical(other.nearGstSlab, nearGstSlab) || other.nearGstSlab == nearGstSlab));
}


@override
int get hashCode => Object.hash(runtimeType,maxPrice,breakdown,nearGstSlab);

@override
String toString() {
  return 'BudgetResult(maxPrice: $maxPrice, breakdown: $breakdown, nearGstSlab: $nearGstSlab)';
}


}

/// @nodoc
abstract mixin class _$BudgetResultCopyWith<$Res> implements $BudgetResultCopyWith<$Res> {
  factory _$BudgetResultCopyWith(_BudgetResult value, $Res Function(_BudgetResult) _then) = __$BudgetResultCopyWithImpl;
@override @useResult
$Res call({
 int maxPrice, CostBreakdown breakdown, bool nearGstSlab
});


@override $CostBreakdownCopyWith<$Res> get breakdown;

}
/// @nodoc
class __$BudgetResultCopyWithImpl<$Res>
    implements _$BudgetResultCopyWith<$Res> {
  __$BudgetResultCopyWithImpl(this._self, this._then);

  final _BudgetResult _self;
  final $Res Function(_BudgetResult) _then;

/// Create a copy of BudgetResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxPrice = null,Object? breakdown = null,Object? nearGstSlab = null,}) {
  return _then(_BudgetResult(
maxPrice: null == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as int,breakdown: null == breakdown ? _self.breakdown : breakdown // ignore: cast_nullable_to_non_nullable
as CostBreakdown,nearGstSlab: null == nearGstSlab ? _self.nearGstSlab : nearGstSlab // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of BudgetResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CostBreakdownCopyWith<$Res> get breakdown {
  
  return $CostBreakdownCopyWith<$Res>(_self.breakdown, (value) {
    return _then(_self.copyWith(breakdown: value));
  });
}
}

// dart format on
