// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guidance_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StepsData {

 String get schemaVersion; String get asOf; List<BuyingStep> get steps;
/// Create a copy of StepsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepsDataCopyWith<StepsData> get copyWith => _$StepsDataCopyWithImpl<StepsData>(this as StepsData, _$identity);

  /// Serializes this StepsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StepsData&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.asOf, asOf) || other.asOf == asOf)&&const DeepCollectionEquality().equals(other.steps, steps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,asOf,const DeepCollectionEquality().hash(steps));

@override
String toString() {
  return 'StepsData(schemaVersion: $schemaVersion, asOf: $asOf, steps: $steps)';
}


}

/// @nodoc
abstract mixin class $StepsDataCopyWith<$Res>  {
  factory $StepsDataCopyWith(StepsData value, $Res Function(StepsData) _then) = _$StepsDataCopyWithImpl;
@useResult
$Res call({
 String schemaVersion, String asOf, List<BuyingStep> steps
});




}
/// @nodoc
class _$StepsDataCopyWithImpl<$Res>
    implements $StepsDataCopyWith<$Res> {
  _$StepsDataCopyWithImpl(this._self, this._then);

  final StepsData _self;
  final $Res Function(StepsData) _then;

/// Create a copy of StepsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schemaVersion = null,Object? asOf = null,Object? steps = null,}) {
  return _then(_self.copyWith(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as String,asOf: null == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<BuyingStep>,
  ));
}

}


/// Adds pattern-matching-related methods to [StepsData].
extension StepsDataPatterns on StepsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StepsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StepsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StepsData value)  $default,){
final _that = this;
switch (_that) {
case _StepsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StepsData value)?  $default,){
final _that = this;
switch (_that) {
case _StepsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String schemaVersion,  String asOf,  List<BuyingStep> steps)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StepsData() when $default != null:
return $default(_that.schemaVersion,_that.asOf,_that.steps);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String schemaVersion,  String asOf,  List<BuyingStep> steps)  $default,) {final _that = this;
switch (_that) {
case _StepsData():
return $default(_that.schemaVersion,_that.asOf,_that.steps);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String schemaVersion,  String asOf,  List<BuyingStep> steps)?  $default,) {final _that = this;
switch (_that) {
case _StepsData() when $default != null:
return $default(_that.schemaVersion,_that.asOf,_that.steps);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StepsData implements StepsData {
  const _StepsData({required this.schemaVersion, required this.asOf, required final  List<BuyingStep> steps}): _steps = steps;
  factory _StepsData.fromJson(Map<String, dynamic> json) => _$StepsDataFromJson(json);

@override final  String schemaVersion;
@override final  String asOf;
 final  List<BuyingStep> _steps;
@override List<BuyingStep> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}


/// Create a copy of StepsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StepsDataCopyWith<_StepsData> get copyWith => __$StepsDataCopyWithImpl<_StepsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StepsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StepsData&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.asOf, asOf) || other.asOf == asOf)&&const DeepCollectionEquality().equals(other._steps, _steps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,asOf,const DeepCollectionEquality().hash(_steps));

@override
String toString() {
  return 'StepsData(schemaVersion: $schemaVersion, asOf: $asOf, steps: $steps)';
}


}

/// @nodoc
abstract mixin class _$StepsDataCopyWith<$Res> implements $StepsDataCopyWith<$Res> {
  factory _$StepsDataCopyWith(_StepsData value, $Res Function(_StepsData) _then) = __$StepsDataCopyWithImpl;
@override @useResult
$Res call({
 String schemaVersion, String asOf, List<BuyingStep> steps
});




}
/// @nodoc
class __$StepsDataCopyWithImpl<$Res>
    implements _$StepsDataCopyWith<$Res> {
  __$StepsDataCopyWithImpl(this._self, this._then);

  final _StepsData _self;
  final $Res Function(_StepsData) _then;

/// Create a copy of StepsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schemaVersion = null,Object? asOf = null,Object? steps = null,}) {
  return _then(_StepsData(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as String,asOf: null == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<BuyingStep>,
  ));
}


}


/// @nodoc
mixin _$BuyingStep {

 String get id; List<String> get statuses; int get order;/// `using_loan` or `seller_loan`; null means always.
 String? get condition; String get title; String get detail; String? get link;/// Optional (SPEC §10); null means every category.
 List<String>? get appliesToCategory;
/// Create a copy of BuyingStep
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyingStepCopyWith<BuyingStep> get copyWith => _$BuyingStepCopyWithImpl<BuyingStep>(this as BuyingStep, _$identity);

  /// Serializes this BuyingStep to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyingStep&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.statuses, statuses)&&(identical(other.order, order) || other.order == order)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.title, title) || other.title == title)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other.appliesToCategory, appliesToCategory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(statuses),order,condition,title,detail,link,const DeepCollectionEquality().hash(appliesToCategory));

@override
String toString() {
  return 'BuyingStep(id: $id, statuses: $statuses, order: $order, condition: $condition, title: $title, detail: $detail, link: $link, appliesToCategory: $appliesToCategory)';
}


}

/// @nodoc
abstract mixin class $BuyingStepCopyWith<$Res>  {
  factory $BuyingStepCopyWith(BuyingStep value, $Res Function(BuyingStep) _then) = _$BuyingStepCopyWithImpl;
@useResult
$Res call({
 String id, List<String> statuses, int order, String? condition, String title, String detail, String? link, List<String>? appliesToCategory
});




}
/// @nodoc
class _$BuyingStepCopyWithImpl<$Res>
    implements $BuyingStepCopyWith<$Res> {
  _$BuyingStepCopyWithImpl(this._self, this._then);

  final BuyingStep _self;
  final $Res Function(BuyingStep) _then;

/// Create a copy of BuyingStep
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? statuses = null,Object? order = null,Object? condition = freezed,Object? title = null,Object? detail = null,Object? link = freezed,Object? appliesToCategory = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,statuses: null == statuses ? _self.statuses : statuses // ignore: cast_nullable_to_non_nullable
as List<String>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,appliesToCategory: freezed == appliesToCategory ? _self.appliesToCategory : appliesToCategory // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BuyingStep].
extension BuyingStepPatterns on BuyingStep {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BuyingStep value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BuyingStep() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BuyingStep value)  $default,){
final _that = this;
switch (_that) {
case _BuyingStep():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BuyingStep value)?  $default,){
final _that = this;
switch (_that) {
case _BuyingStep() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String> statuses,  int order,  String? condition,  String title,  String detail,  String? link,  List<String>? appliesToCategory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BuyingStep() when $default != null:
return $default(_that.id,_that.statuses,_that.order,_that.condition,_that.title,_that.detail,_that.link,_that.appliesToCategory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String> statuses,  int order,  String? condition,  String title,  String detail,  String? link,  List<String>? appliesToCategory)  $default,) {final _that = this;
switch (_that) {
case _BuyingStep():
return $default(_that.id,_that.statuses,_that.order,_that.condition,_that.title,_that.detail,_that.link,_that.appliesToCategory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String> statuses,  int order,  String? condition,  String title,  String detail,  String? link,  List<String>? appliesToCategory)?  $default,) {final _that = this;
switch (_that) {
case _BuyingStep() when $default != null:
return $default(_that.id,_that.statuses,_that.order,_that.condition,_that.title,_that.detail,_that.link,_that.appliesToCategory);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BuyingStep implements BuyingStep {
  const _BuyingStep({required this.id, required final  List<String> statuses, required this.order, this.condition, required this.title, required this.detail, this.link, final  List<String>? appliesToCategory}): _statuses = statuses,_appliesToCategory = appliesToCategory;
  factory _BuyingStep.fromJson(Map<String, dynamic> json) => _$BuyingStepFromJson(json);

@override final  String id;
 final  List<String> _statuses;
@override List<String> get statuses {
  if (_statuses is EqualUnmodifiableListView) return _statuses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_statuses);
}

@override final  int order;
/// `using_loan` or `seller_loan`; null means always.
@override final  String? condition;
@override final  String title;
@override final  String detail;
@override final  String? link;
/// Optional (SPEC §10); null means every category.
 final  List<String>? _appliesToCategory;
/// Optional (SPEC §10); null means every category.
@override List<String>? get appliesToCategory {
  final value = _appliesToCategory;
  if (value == null) return null;
  if (_appliesToCategory is EqualUnmodifiableListView) return _appliesToCategory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BuyingStep
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuyingStepCopyWith<_BuyingStep> get copyWith => __$BuyingStepCopyWithImpl<_BuyingStep>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BuyingStepToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BuyingStep&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._statuses, _statuses)&&(identical(other.order, order) || other.order == order)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.title, title) || other.title == title)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other._appliesToCategory, _appliesToCategory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_statuses),order,condition,title,detail,link,const DeepCollectionEquality().hash(_appliesToCategory));

@override
String toString() {
  return 'BuyingStep(id: $id, statuses: $statuses, order: $order, condition: $condition, title: $title, detail: $detail, link: $link, appliesToCategory: $appliesToCategory)';
}


}

/// @nodoc
abstract mixin class _$BuyingStepCopyWith<$Res> implements $BuyingStepCopyWith<$Res> {
  factory _$BuyingStepCopyWith(_BuyingStep value, $Res Function(_BuyingStep) _then) = __$BuyingStepCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> statuses, int order, String? condition, String title, String detail, String? link, List<String>? appliesToCategory
});




}
/// @nodoc
class __$BuyingStepCopyWithImpl<$Res>
    implements _$BuyingStepCopyWith<$Res> {
  __$BuyingStepCopyWithImpl(this._self, this._then);

  final _BuyingStep _self;
  final $Res Function(_BuyingStep) _then;

/// Create a copy of BuyingStep
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? statuses = null,Object? order = null,Object? condition = freezed,Object? title = null,Object? detail = null,Object? link = freezed,Object? appliesToCategory = freezed,}) {
  return _then(_BuyingStep(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,statuses: null == statuses ? _self._statuses : statuses // ignore: cast_nullable_to_non_nullable
as List<String>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,appliesToCategory: freezed == appliesToCategory ? _self._appliesToCategory : appliesToCategory // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$RiskData {

 String get schemaVersion; String get region; String get asOf; String? get generatedBy; String get disclaimer; List<ScamPattern> get scamPatterns; List<AreaNote> get areaNotes; List<String> get generalPrecautions; List<VerificationLink> get officialVerificationLinks; Map<String, Object?>? get rateSnapshot; List<String> get notes;
/// Create a copy of RiskData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskDataCopyWith<RiskData> get copyWith => _$RiskDataCopyWithImpl<RiskData>(this as RiskData, _$identity);

  /// Serializes this RiskData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskData&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.region, region) || other.region == region)&&(identical(other.asOf, asOf) || other.asOf == asOf)&&(identical(other.generatedBy, generatedBy) || other.generatedBy == generatedBy)&&(identical(other.disclaimer, disclaimer) || other.disclaimer == disclaimer)&&const DeepCollectionEquality().equals(other.scamPatterns, scamPatterns)&&const DeepCollectionEquality().equals(other.areaNotes, areaNotes)&&const DeepCollectionEquality().equals(other.generalPrecautions, generalPrecautions)&&const DeepCollectionEquality().equals(other.officialVerificationLinks, officialVerificationLinks)&&const DeepCollectionEquality().equals(other.rateSnapshot, rateSnapshot)&&const DeepCollectionEquality().equals(other.notes, notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,region,asOf,generatedBy,disclaimer,const DeepCollectionEquality().hash(scamPatterns),const DeepCollectionEquality().hash(areaNotes),const DeepCollectionEquality().hash(generalPrecautions),const DeepCollectionEquality().hash(officialVerificationLinks),const DeepCollectionEquality().hash(rateSnapshot),const DeepCollectionEquality().hash(notes));

@override
String toString() {
  return 'RiskData(schemaVersion: $schemaVersion, region: $region, asOf: $asOf, generatedBy: $generatedBy, disclaimer: $disclaimer, scamPatterns: $scamPatterns, areaNotes: $areaNotes, generalPrecautions: $generalPrecautions, officialVerificationLinks: $officialVerificationLinks, rateSnapshot: $rateSnapshot, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $RiskDataCopyWith<$Res>  {
  factory $RiskDataCopyWith(RiskData value, $Res Function(RiskData) _then) = _$RiskDataCopyWithImpl;
@useResult
$Res call({
 String schemaVersion, String region, String asOf, String? generatedBy, String disclaimer, List<ScamPattern> scamPatterns, List<AreaNote> areaNotes, List<String> generalPrecautions, List<VerificationLink> officialVerificationLinks, Map<String, Object?>? rateSnapshot, List<String> notes
});




}
/// @nodoc
class _$RiskDataCopyWithImpl<$Res>
    implements $RiskDataCopyWith<$Res> {
  _$RiskDataCopyWithImpl(this._self, this._then);

  final RiskData _self;
  final $Res Function(RiskData) _then;

/// Create a copy of RiskData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schemaVersion = null,Object? region = null,Object? asOf = null,Object? generatedBy = freezed,Object? disclaimer = null,Object? scamPatterns = null,Object? areaNotes = null,Object? generalPrecautions = null,Object? officialVerificationLinks = null,Object? rateSnapshot = freezed,Object? notes = null,}) {
  return _then(_self.copyWith(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,asOf: null == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String,generatedBy: freezed == generatedBy ? _self.generatedBy : generatedBy // ignore: cast_nullable_to_non_nullable
as String?,disclaimer: null == disclaimer ? _self.disclaimer : disclaimer // ignore: cast_nullable_to_non_nullable
as String,scamPatterns: null == scamPatterns ? _self.scamPatterns : scamPatterns // ignore: cast_nullable_to_non_nullable
as List<ScamPattern>,areaNotes: null == areaNotes ? _self.areaNotes : areaNotes // ignore: cast_nullable_to_non_nullable
as List<AreaNote>,generalPrecautions: null == generalPrecautions ? _self.generalPrecautions : generalPrecautions // ignore: cast_nullable_to_non_nullable
as List<String>,officialVerificationLinks: null == officialVerificationLinks ? _self.officialVerificationLinks : officialVerificationLinks // ignore: cast_nullable_to_non_nullable
as List<VerificationLink>,rateSnapshot: freezed == rateSnapshot ? _self.rateSnapshot : rateSnapshot // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskData].
extension RiskDataPatterns on RiskData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskData value)  $default,){
final _that = this;
switch (_that) {
case _RiskData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskData value)?  $default,){
final _that = this;
switch (_that) {
case _RiskData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String schemaVersion,  String region,  String asOf,  String? generatedBy,  String disclaimer,  List<ScamPattern> scamPatterns,  List<AreaNote> areaNotes,  List<String> generalPrecautions,  List<VerificationLink> officialVerificationLinks,  Map<String, Object?>? rateSnapshot,  List<String> notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskData() when $default != null:
return $default(_that.schemaVersion,_that.region,_that.asOf,_that.generatedBy,_that.disclaimer,_that.scamPatterns,_that.areaNotes,_that.generalPrecautions,_that.officialVerificationLinks,_that.rateSnapshot,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String schemaVersion,  String region,  String asOf,  String? generatedBy,  String disclaimer,  List<ScamPattern> scamPatterns,  List<AreaNote> areaNotes,  List<String> generalPrecautions,  List<VerificationLink> officialVerificationLinks,  Map<String, Object?>? rateSnapshot,  List<String> notes)  $default,) {final _that = this;
switch (_that) {
case _RiskData():
return $default(_that.schemaVersion,_that.region,_that.asOf,_that.generatedBy,_that.disclaimer,_that.scamPatterns,_that.areaNotes,_that.generalPrecautions,_that.officialVerificationLinks,_that.rateSnapshot,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String schemaVersion,  String region,  String asOf,  String? generatedBy,  String disclaimer,  List<ScamPattern> scamPatterns,  List<AreaNote> areaNotes,  List<String> generalPrecautions,  List<VerificationLink> officialVerificationLinks,  Map<String, Object?>? rateSnapshot,  List<String> notes)?  $default,) {final _that = this;
switch (_that) {
case _RiskData() when $default != null:
return $default(_that.schemaVersion,_that.region,_that.asOf,_that.generatedBy,_that.disclaimer,_that.scamPatterns,_that.areaNotes,_that.generalPrecautions,_that.officialVerificationLinks,_that.rateSnapshot,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RiskData implements RiskData {
  const _RiskData({required this.schemaVersion, required this.region, required this.asOf, this.generatedBy, this.disclaimer = '', required final  List<ScamPattern> scamPatterns, final  List<AreaNote> areaNotes = const <AreaNote>[], final  List<String> generalPrecautions = const <String>[], final  List<VerificationLink> officialVerificationLinks = const <VerificationLink>[], final  Map<String, Object?>? rateSnapshot, final  List<String> notes = const <String>[]}): _scamPatterns = scamPatterns,_areaNotes = areaNotes,_generalPrecautions = generalPrecautions,_officialVerificationLinks = officialVerificationLinks,_rateSnapshot = rateSnapshot,_notes = notes;
  factory _RiskData.fromJson(Map<String, dynamic> json) => _$RiskDataFromJson(json);

@override final  String schemaVersion;
@override final  String region;
@override final  String asOf;
@override final  String? generatedBy;
@override@JsonKey() final  String disclaimer;
 final  List<ScamPattern> _scamPatterns;
@override List<ScamPattern> get scamPatterns {
  if (_scamPatterns is EqualUnmodifiableListView) return _scamPatterns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scamPatterns);
}

 final  List<AreaNote> _areaNotes;
@override@JsonKey() List<AreaNote> get areaNotes {
  if (_areaNotes is EqualUnmodifiableListView) return _areaNotes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_areaNotes);
}

 final  List<String> _generalPrecautions;
@override@JsonKey() List<String> get generalPrecautions {
  if (_generalPrecautions is EqualUnmodifiableListView) return _generalPrecautions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_generalPrecautions);
}

 final  List<VerificationLink> _officialVerificationLinks;
@override@JsonKey() List<VerificationLink> get officialVerificationLinks {
  if (_officialVerificationLinks is EqualUnmodifiableListView) return _officialVerificationLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_officialVerificationLinks);
}

 final  Map<String, Object?>? _rateSnapshot;
@override Map<String, Object?>? get rateSnapshot {
  final value = _rateSnapshot;
  if (value == null) return null;
  if (_rateSnapshot is EqualUnmodifiableMapView) return _rateSnapshot;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String> _notes;
@override@JsonKey() List<String> get notes {
  if (_notes is EqualUnmodifiableListView) return _notes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notes);
}


/// Create a copy of RiskData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskDataCopyWith<_RiskData> get copyWith => __$RiskDataCopyWithImpl<_RiskData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiskDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskData&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.region, region) || other.region == region)&&(identical(other.asOf, asOf) || other.asOf == asOf)&&(identical(other.generatedBy, generatedBy) || other.generatedBy == generatedBy)&&(identical(other.disclaimer, disclaimer) || other.disclaimer == disclaimer)&&const DeepCollectionEquality().equals(other._scamPatterns, _scamPatterns)&&const DeepCollectionEquality().equals(other._areaNotes, _areaNotes)&&const DeepCollectionEquality().equals(other._generalPrecautions, _generalPrecautions)&&const DeepCollectionEquality().equals(other._officialVerificationLinks, _officialVerificationLinks)&&const DeepCollectionEquality().equals(other._rateSnapshot, _rateSnapshot)&&const DeepCollectionEquality().equals(other._notes, _notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,region,asOf,generatedBy,disclaimer,const DeepCollectionEquality().hash(_scamPatterns),const DeepCollectionEquality().hash(_areaNotes),const DeepCollectionEquality().hash(_generalPrecautions),const DeepCollectionEquality().hash(_officialVerificationLinks),const DeepCollectionEquality().hash(_rateSnapshot),const DeepCollectionEquality().hash(_notes));

@override
String toString() {
  return 'RiskData(schemaVersion: $schemaVersion, region: $region, asOf: $asOf, generatedBy: $generatedBy, disclaimer: $disclaimer, scamPatterns: $scamPatterns, areaNotes: $areaNotes, generalPrecautions: $generalPrecautions, officialVerificationLinks: $officialVerificationLinks, rateSnapshot: $rateSnapshot, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$RiskDataCopyWith<$Res> implements $RiskDataCopyWith<$Res> {
  factory _$RiskDataCopyWith(_RiskData value, $Res Function(_RiskData) _then) = __$RiskDataCopyWithImpl;
@override @useResult
$Res call({
 String schemaVersion, String region, String asOf, String? generatedBy, String disclaimer, List<ScamPattern> scamPatterns, List<AreaNote> areaNotes, List<String> generalPrecautions, List<VerificationLink> officialVerificationLinks, Map<String, Object?>? rateSnapshot, List<String> notes
});




}
/// @nodoc
class __$RiskDataCopyWithImpl<$Res>
    implements _$RiskDataCopyWith<$Res> {
  __$RiskDataCopyWithImpl(this._self, this._then);

  final _RiskData _self;
  final $Res Function(_RiskData) _then;

/// Create a copy of RiskData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schemaVersion = null,Object? region = null,Object? asOf = null,Object? generatedBy = freezed,Object? disclaimer = null,Object? scamPatterns = null,Object? areaNotes = null,Object? generalPrecautions = null,Object? officialVerificationLinks = null,Object? rateSnapshot = freezed,Object? notes = null,}) {
  return _then(_RiskData(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,asOf: null == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String,generatedBy: freezed == generatedBy ? _self.generatedBy : generatedBy // ignore: cast_nullable_to_non_nullable
as String?,disclaimer: null == disclaimer ? _self.disclaimer : disclaimer // ignore: cast_nullable_to_non_nullable
as String,scamPatterns: null == scamPatterns ? _self._scamPatterns : scamPatterns // ignore: cast_nullable_to_non_nullable
as List<ScamPattern>,areaNotes: null == areaNotes ? _self._areaNotes : areaNotes // ignore: cast_nullable_to_non_nullable
as List<AreaNote>,generalPrecautions: null == generalPrecautions ? _self._generalPrecautions : generalPrecautions // ignore: cast_nullable_to_non_nullable
as List<String>,officialVerificationLinks: null == officialVerificationLinks ? _self._officialVerificationLinks : officialVerificationLinks // ignore: cast_nullable_to_non_nullable
as List<VerificationLink>,rateSnapshot: freezed == rateSnapshot ? _self._rateSnapshot : rateSnapshot // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,notes: null == notes ? _self._notes : notes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$ScamPattern {

 String get id; String get title; String get severity; List<String> get appliesToStatus; List<String> get appliesToAreas; List<String>? get appliesToCategory; String get howItWorks; List<String> get redFlags; List<String> get preventionChecks; List<RecentCase> get recentCases;
/// Create a copy of ScamPattern
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScamPatternCopyWith<ScamPattern> get copyWith => _$ScamPatternCopyWithImpl<ScamPattern>(this as ScamPattern, _$identity);

  /// Serializes this ScamPattern to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScamPattern&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.severity, severity) || other.severity == severity)&&const DeepCollectionEquality().equals(other.appliesToStatus, appliesToStatus)&&const DeepCollectionEquality().equals(other.appliesToAreas, appliesToAreas)&&const DeepCollectionEquality().equals(other.appliesToCategory, appliesToCategory)&&(identical(other.howItWorks, howItWorks) || other.howItWorks == howItWorks)&&const DeepCollectionEquality().equals(other.redFlags, redFlags)&&const DeepCollectionEquality().equals(other.preventionChecks, preventionChecks)&&const DeepCollectionEquality().equals(other.recentCases, recentCases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,severity,const DeepCollectionEquality().hash(appliesToStatus),const DeepCollectionEquality().hash(appliesToAreas),const DeepCollectionEquality().hash(appliesToCategory),howItWorks,const DeepCollectionEquality().hash(redFlags),const DeepCollectionEquality().hash(preventionChecks),const DeepCollectionEquality().hash(recentCases));

@override
String toString() {
  return 'ScamPattern(id: $id, title: $title, severity: $severity, appliesToStatus: $appliesToStatus, appliesToAreas: $appliesToAreas, appliesToCategory: $appliesToCategory, howItWorks: $howItWorks, redFlags: $redFlags, preventionChecks: $preventionChecks, recentCases: $recentCases)';
}


}

/// @nodoc
abstract mixin class $ScamPatternCopyWith<$Res>  {
  factory $ScamPatternCopyWith(ScamPattern value, $Res Function(ScamPattern) _then) = _$ScamPatternCopyWithImpl;
@useResult
$Res call({
 String id, String title, String severity, List<String> appliesToStatus, List<String> appliesToAreas, List<String>? appliesToCategory, String howItWorks, List<String> redFlags, List<String> preventionChecks, List<RecentCase> recentCases
});




}
/// @nodoc
class _$ScamPatternCopyWithImpl<$Res>
    implements $ScamPatternCopyWith<$Res> {
  _$ScamPatternCopyWithImpl(this._self, this._then);

  final ScamPattern _self;
  final $Res Function(ScamPattern) _then;

/// Create a copy of ScamPattern
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? severity = null,Object? appliesToStatus = null,Object? appliesToAreas = null,Object? appliesToCategory = freezed,Object? howItWorks = null,Object? redFlags = null,Object? preventionChecks = null,Object? recentCases = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,appliesToStatus: null == appliesToStatus ? _self.appliesToStatus : appliesToStatus // ignore: cast_nullable_to_non_nullable
as List<String>,appliesToAreas: null == appliesToAreas ? _self.appliesToAreas : appliesToAreas // ignore: cast_nullable_to_non_nullable
as List<String>,appliesToCategory: freezed == appliesToCategory ? _self.appliesToCategory : appliesToCategory // ignore: cast_nullable_to_non_nullable
as List<String>?,howItWorks: null == howItWorks ? _self.howItWorks : howItWorks // ignore: cast_nullable_to_non_nullable
as String,redFlags: null == redFlags ? _self.redFlags : redFlags // ignore: cast_nullable_to_non_nullable
as List<String>,preventionChecks: null == preventionChecks ? _self.preventionChecks : preventionChecks // ignore: cast_nullable_to_non_nullable
as List<String>,recentCases: null == recentCases ? _self.recentCases : recentCases // ignore: cast_nullable_to_non_nullable
as List<RecentCase>,
  ));
}

}


/// Adds pattern-matching-related methods to [ScamPattern].
extension ScamPatternPatterns on ScamPattern {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScamPattern value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScamPattern() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScamPattern value)  $default,){
final _that = this;
switch (_that) {
case _ScamPattern():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScamPattern value)?  $default,){
final _that = this;
switch (_that) {
case _ScamPattern() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String severity,  List<String> appliesToStatus,  List<String> appliesToAreas,  List<String>? appliesToCategory,  String howItWorks,  List<String> redFlags,  List<String> preventionChecks,  List<RecentCase> recentCases)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScamPattern() when $default != null:
return $default(_that.id,_that.title,_that.severity,_that.appliesToStatus,_that.appliesToAreas,_that.appliesToCategory,_that.howItWorks,_that.redFlags,_that.preventionChecks,_that.recentCases);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String severity,  List<String> appliesToStatus,  List<String> appliesToAreas,  List<String>? appliesToCategory,  String howItWorks,  List<String> redFlags,  List<String> preventionChecks,  List<RecentCase> recentCases)  $default,) {final _that = this;
switch (_that) {
case _ScamPattern():
return $default(_that.id,_that.title,_that.severity,_that.appliesToStatus,_that.appliesToAreas,_that.appliesToCategory,_that.howItWorks,_that.redFlags,_that.preventionChecks,_that.recentCases);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String severity,  List<String> appliesToStatus,  List<String> appliesToAreas,  List<String>? appliesToCategory,  String howItWorks,  List<String> redFlags,  List<String> preventionChecks,  List<RecentCase> recentCases)?  $default,) {final _that = this;
switch (_that) {
case _ScamPattern() when $default != null:
return $default(_that.id,_that.title,_that.severity,_that.appliesToStatus,_that.appliesToAreas,_that.appliesToCategory,_that.howItWorks,_that.redFlags,_that.preventionChecks,_that.recentCases);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScamPattern extends ScamPattern {
  const _ScamPattern({required this.id, required this.title, required this.severity, required final  List<String> appliesToStatus, final  List<String> appliesToAreas = const <String>['all'], final  List<String>? appliesToCategory, this.howItWorks = '', final  List<String> redFlags = const <String>[], final  List<String> preventionChecks = const <String>[], final  List<RecentCase> recentCases = const <RecentCase>[]}): _appliesToStatus = appliesToStatus,_appliesToAreas = appliesToAreas,_appliesToCategory = appliesToCategory,_redFlags = redFlags,_preventionChecks = preventionChecks,_recentCases = recentCases,super._();
  factory _ScamPattern.fromJson(Map<String, dynamic> json) => _$ScamPatternFromJson(json);

@override final  String id;
@override final  String title;
@override final  String severity;
 final  List<String> _appliesToStatus;
@override List<String> get appliesToStatus {
  if (_appliesToStatus is EqualUnmodifiableListView) return _appliesToStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appliesToStatus);
}

 final  List<String> _appliesToAreas;
@override@JsonKey() List<String> get appliesToAreas {
  if (_appliesToAreas is EqualUnmodifiableListView) return _appliesToAreas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appliesToAreas);
}

 final  List<String>? _appliesToCategory;
@override List<String>? get appliesToCategory {
  final value = _appliesToCategory;
  if (value == null) return null;
  if (_appliesToCategory is EqualUnmodifiableListView) return _appliesToCategory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String howItWorks;
 final  List<String> _redFlags;
@override@JsonKey() List<String> get redFlags {
  if (_redFlags is EqualUnmodifiableListView) return _redFlags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_redFlags);
}

 final  List<String> _preventionChecks;
@override@JsonKey() List<String> get preventionChecks {
  if (_preventionChecks is EqualUnmodifiableListView) return _preventionChecks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_preventionChecks);
}

 final  List<RecentCase> _recentCases;
@override@JsonKey() List<RecentCase> get recentCases {
  if (_recentCases is EqualUnmodifiableListView) return _recentCases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentCases);
}


/// Create a copy of ScamPattern
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScamPatternCopyWith<_ScamPattern> get copyWith => __$ScamPatternCopyWithImpl<_ScamPattern>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScamPatternToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScamPattern&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.severity, severity) || other.severity == severity)&&const DeepCollectionEquality().equals(other._appliesToStatus, _appliesToStatus)&&const DeepCollectionEquality().equals(other._appliesToAreas, _appliesToAreas)&&const DeepCollectionEquality().equals(other._appliesToCategory, _appliesToCategory)&&(identical(other.howItWorks, howItWorks) || other.howItWorks == howItWorks)&&const DeepCollectionEquality().equals(other._redFlags, _redFlags)&&const DeepCollectionEquality().equals(other._preventionChecks, _preventionChecks)&&const DeepCollectionEquality().equals(other._recentCases, _recentCases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,severity,const DeepCollectionEquality().hash(_appliesToStatus),const DeepCollectionEquality().hash(_appliesToAreas),const DeepCollectionEquality().hash(_appliesToCategory),howItWorks,const DeepCollectionEquality().hash(_redFlags),const DeepCollectionEquality().hash(_preventionChecks),const DeepCollectionEquality().hash(_recentCases));

@override
String toString() {
  return 'ScamPattern(id: $id, title: $title, severity: $severity, appliesToStatus: $appliesToStatus, appliesToAreas: $appliesToAreas, appliesToCategory: $appliesToCategory, howItWorks: $howItWorks, redFlags: $redFlags, preventionChecks: $preventionChecks, recentCases: $recentCases)';
}


}

/// @nodoc
abstract mixin class _$ScamPatternCopyWith<$Res> implements $ScamPatternCopyWith<$Res> {
  factory _$ScamPatternCopyWith(_ScamPattern value, $Res Function(_ScamPattern) _then) = __$ScamPatternCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String severity, List<String> appliesToStatus, List<String> appliesToAreas, List<String>? appliesToCategory, String howItWorks, List<String> redFlags, List<String> preventionChecks, List<RecentCase> recentCases
});




}
/// @nodoc
class __$ScamPatternCopyWithImpl<$Res>
    implements _$ScamPatternCopyWith<$Res> {
  __$ScamPatternCopyWithImpl(this._self, this._then);

  final _ScamPattern _self;
  final $Res Function(_ScamPattern) _then;

/// Create a copy of ScamPattern
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? severity = null,Object? appliesToStatus = null,Object? appliesToAreas = null,Object? appliesToCategory = freezed,Object? howItWorks = null,Object? redFlags = null,Object? preventionChecks = null,Object? recentCases = null,}) {
  return _then(_ScamPattern(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,appliesToStatus: null == appliesToStatus ? _self._appliesToStatus : appliesToStatus // ignore: cast_nullable_to_non_nullable
as List<String>,appliesToAreas: null == appliesToAreas ? _self._appliesToAreas : appliesToAreas // ignore: cast_nullable_to_non_nullable
as List<String>,appliesToCategory: freezed == appliesToCategory ? _self._appliesToCategory : appliesToCategory // ignore: cast_nullable_to_non_nullable
as List<String>?,howItWorks: null == howItWorks ? _self.howItWorks : howItWorks // ignore: cast_nullable_to_non_nullable
as String,redFlags: null == redFlags ? _self._redFlags : redFlags // ignore: cast_nullable_to_non_nullable
as List<String>,preventionChecks: null == preventionChecks ? _self._preventionChecks : preventionChecks // ignore: cast_nullable_to_non_nullable
as List<String>,recentCases: null == recentCases ? _self._recentCases : recentCases // ignore: cast_nullable_to_non_nullable
as List<RecentCase>,
  ));
}


}


/// @nodoc
mixin _$RecentCase {

 String get date; String get area; int? get amountInr; String get summary; String get sourceTitle; String get sourceUrl;
/// Create a copy of RecentCase
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentCaseCopyWith<RecentCase> get copyWith => _$RecentCaseCopyWithImpl<RecentCase>(this as RecentCase, _$identity);

  /// Serializes this RecentCase to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentCase&&(identical(other.date, date) || other.date == date)&&(identical(other.area, area) || other.area == area)&&(identical(other.amountInr, amountInr) || other.amountInr == amountInr)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.sourceTitle, sourceTitle) || other.sourceTitle == sourceTitle)&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,area,amountInr,summary,sourceTitle,sourceUrl);

@override
String toString() {
  return 'RecentCase(date: $date, area: $area, amountInr: $amountInr, summary: $summary, sourceTitle: $sourceTitle, sourceUrl: $sourceUrl)';
}


}

/// @nodoc
abstract mixin class $RecentCaseCopyWith<$Res>  {
  factory $RecentCaseCopyWith(RecentCase value, $Res Function(RecentCase) _then) = _$RecentCaseCopyWithImpl;
@useResult
$Res call({
 String date, String area, int? amountInr, String summary, String sourceTitle, String sourceUrl
});




}
/// @nodoc
class _$RecentCaseCopyWithImpl<$Res>
    implements $RecentCaseCopyWith<$Res> {
  _$RecentCaseCopyWithImpl(this._self, this._then);

  final RecentCase _self;
  final $Res Function(RecentCase) _then;

/// Create a copy of RecentCase
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? area = null,Object? amountInr = freezed,Object? summary = null,Object? sourceTitle = null,Object? sourceUrl = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,amountInr: freezed == amountInr ? _self.amountInr : amountInr // ignore: cast_nullable_to_non_nullable
as int?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,sourceTitle: null == sourceTitle ? _self.sourceTitle : sourceTitle // ignore: cast_nullable_to_non_nullable
as String,sourceUrl: null == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentCase].
extension RecentCasePatterns on RecentCase {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentCase value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentCase() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentCase value)  $default,){
final _that = this;
switch (_that) {
case _RecentCase():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentCase value)?  $default,){
final _that = this;
switch (_that) {
case _RecentCase() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  String area,  int? amountInr,  String summary,  String sourceTitle,  String sourceUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentCase() when $default != null:
return $default(_that.date,_that.area,_that.amountInr,_that.summary,_that.sourceTitle,_that.sourceUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  String area,  int? amountInr,  String summary,  String sourceTitle,  String sourceUrl)  $default,) {final _that = this;
switch (_that) {
case _RecentCase():
return $default(_that.date,_that.area,_that.amountInr,_that.summary,_that.sourceTitle,_that.sourceUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  String area,  int? amountInr,  String summary,  String sourceTitle,  String sourceUrl)?  $default,) {final _that = this;
switch (_that) {
case _RecentCase() when $default != null:
return $default(_that.date,_that.area,_that.amountInr,_that.summary,_that.sourceTitle,_that.sourceUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentCase implements RecentCase {
  const _RecentCase({required this.date, required this.area, this.amountInr, required this.summary, required this.sourceTitle, required this.sourceUrl});
  factory _RecentCase.fromJson(Map<String, dynamic> json) => _$RecentCaseFromJson(json);

@override final  String date;
@override final  String area;
@override final  int? amountInr;
@override final  String summary;
@override final  String sourceTitle;
@override final  String sourceUrl;

/// Create a copy of RecentCase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentCaseCopyWith<_RecentCase> get copyWith => __$RecentCaseCopyWithImpl<_RecentCase>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentCaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentCase&&(identical(other.date, date) || other.date == date)&&(identical(other.area, area) || other.area == area)&&(identical(other.amountInr, amountInr) || other.amountInr == amountInr)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.sourceTitle, sourceTitle) || other.sourceTitle == sourceTitle)&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,area,amountInr,summary,sourceTitle,sourceUrl);

@override
String toString() {
  return 'RecentCase(date: $date, area: $area, amountInr: $amountInr, summary: $summary, sourceTitle: $sourceTitle, sourceUrl: $sourceUrl)';
}


}

/// @nodoc
abstract mixin class _$RecentCaseCopyWith<$Res> implements $RecentCaseCopyWith<$Res> {
  factory _$RecentCaseCopyWith(_RecentCase value, $Res Function(_RecentCase) _then) = __$RecentCaseCopyWithImpl;
@override @useResult
$Res call({
 String date, String area, int? amountInr, String summary, String sourceTitle, String sourceUrl
});




}
/// @nodoc
class __$RecentCaseCopyWithImpl<$Res>
    implements _$RecentCaseCopyWith<$Res> {
  __$RecentCaseCopyWithImpl(this._self, this._then);

  final _RecentCase _self;
  final $Res Function(_RecentCase) _then;

/// Create a copy of RecentCase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? area = null,Object? amountInr = freezed,Object? summary = null,Object? sourceTitle = null,Object? sourceUrl = null,}) {
  return _then(_RecentCase(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,amountInr: freezed == amountInr ? _self.amountInr : amountInr // ignore: cast_nullable_to_non_nullable
as int?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,sourceTitle: null == sourceTitle ? _self.sourceTitle : sourceTitle // ignore: cast_nullable_to_non_nullable
as String,sourceUrl: null == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AreaNote {

 String get area; List<String> get riskTags; String get note;
/// Create a copy of AreaNote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AreaNoteCopyWith<AreaNote> get copyWith => _$AreaNoteCopyWithImpl<AreaNote>(this as AreaNote, _$identity);

  /// Serializes this AreaNote to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AreaNote&&(identical(other.area, area) || other.area == area)&&const DeepCollectionEquality().equals(other.riskTags, riskTags)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,area,const DeepCollectionEquality().hash(riskTags),note);

@override
String toString() {
  return 'AreaNote(area: $area, riskTags: $riskTags, note: $note)';
}


}

/// @nodoc
abstract mixin class $AreaNoteCopyWith<$Res>  {
  factory $AreaNoteCopyWith(AreaNote value, $Res Function(AreaNote) _then) = _$AreaNoteCopyWithImpl;
@useResult
$Res call({
 String area, List<String> riskTags, String note
});




}
/// @nodoc
class _$AreaNoteCopyWithImpl<$Res>
    implements $AreaNoteCopyWith<$Res> {
  _$AreaNoteCopyWithImpl(this._self, this._then);

  final AreaNote _self;
  final $Res Function(AreaNote) _then;

/// Create a copy of AreaNote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? area = null,Object? riskTags = null,Object? note = null,}) {
  return _then(_self.copyWith(
area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,riskTags: null == riskTags ? _self.riskTags : riskTags // ignore: cast_nullable_to_non_nullable
as List<String>,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AreaNote].
extension AreaNotePatterns on AreaNote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AreaNote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AreaNote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AreaNote value)  $default,){
final _that = this;
switch (_that) {
case _AreaNote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AreaNote value)?  $default,){
final _that = this;
switch (_that) {
case _AreaNote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String area,  List<String> riskTags,  String note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AreaNote() when $default != null:
return $default(_that.area,_that.riskTags,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String area,  List<String> riskTags,  String note)  $default,) {final _that = this;
switch (_that) {
case _AreaNote():
return $default(_that.area,_that.riskTags,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String area,  List<String> riskTags,  String note)?  $default,) {final _that = this;
switch (_that) {
case _AreaNote() when $default != null:
return $default(_that.area,_that.riskTags,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AreaNote implements AreaNote {
  const _AreaNote({required this.area, final  List<String> riskTags = const <String>[], required this.note}): _riskTags = riskTags;
  factory _AreaNote.fromJson(Map<String, dynamic> json) => _$AreaNoteFromJson(json);

@override final  String area;
 final  List<String> _riskTags;
@override@JsonKey() List<String> get riskTags {
  if (_riskTags is EqualUnmodifiableListView) return _riskTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riskTags);
}

@override final  String note;

/// Create a copy of AreaNote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AreaNoteCopyWith<_AreaNote> get copyWith => __$AreaNoteCopyWithImpl<_AreaNote>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AreaNoteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AreaNote&&(identical(other.area, area) || other.area == area)&&const DeepCollectionEquality().equals(other._riskTags, _riskTags)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,area,const DeepCollectionEquality().hash(_riskTags),note);

@override
String toString() {
  return 'AreaNote(area: $area, riskTags: $riskTags, note: $note)';
}


}

/// @nodoc
abstract mixin class _$AreaNoteCopyWith<$Res> implements $AreaNoteCopyWith<$Res> {
  factory _$AreaNoteCopyWith(_AreaNote value, $Res Function(_AreaNote) _then) = __$AreaNoteCopyWithImpl;
@override @useResult
$Res call({
 String area, List<String> riskTags, String note
});




}
/// @nodoc
class __$AreaNoteCopyWithImpl<$Res>
    implements _$AreaNoteCopyWith<$Res> {
  __$AreaNoteCopyWithImpl(this._self, this._then);

  final _AreaNote _self;
  final $Res Function(_AreaNote) _then;

/// Create a copy of AreaNote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? area = null,Object? riskTags = null,Object? note = null,}) {
  return _then(_AreaNote(
area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,riskTags: null == riskTags ? _self._riskTags : riskTags // ignore: cast_nullable_to_non_nullable
as List<String>,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$VerificationLink {

 String get name; String get url; String get purpose;
/// Create a copy of VerificationLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationLinkCopyWith<VerificationLink> get copyWith => _$VerificationLinkCopyWithImpl<VerificationLink>(this as VerificationLink, _$identity);

  /// Serializes this VerificationLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationLink&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.purpose, purpose) || other.purpose == purpose));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,purpose);

@override
String toString() {
  return 'VerificationLink(name: $name, url: $url, purpose: $purpose)';
}


}

/// @nodoc
abstract mixin class $VerificationLinkCopyWith<$Res>  {
  factory $VerificationLinkCopyWith(VerificationLink value, $Res Function(VerificationLink) _then) = _$VerificationLinkCopyWithImpl;
@useResult
$Res call({
 String name, String url, String purpose
});




}
/// @nodoc
class _$VerificationLinkCopyWithImpl<$Res>
    implements $VerificationLinkCopyWith<$Res> {
  _$VerificationLinkCopyWithImpl(this._self, this._then);

  final VerificationLink _self;
  final $Res Function(VerificationLink) _then;

/// Create a copy of VerificationLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,Object? purpose = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,purpose: null == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerificationLink].
extension VerificationLinkPatterns on VerificationLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerificationLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerificationLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerificationLink value)  $default,){
final _that = this;
switch (_that) {
case _VerificationLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerificationLink value)?  $default,){
final _that = this;
switch (_that) {
case _VerificationLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url,  String purpose)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerificationLink() when $default != null:
return $default(_that.name,_that.url,_that.purpose);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url,  String purpose)  $default,) {final _that = this;
switch (_that) {
case _VerificationLink():
return $default(_that.name,_that.url,_that.purpose);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url,  String purpose)?  $default,) {final _that = this;
switch (_that) {
case _VerificationLink() when $default != null:
return $default(_that.name,_that.url,_that.purpose);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerificationLink implements VerificationLink {
  const _VerificationLink({required this.name, required this.url, required this.purpose});
  factory _VerificationLink.fromJson(Map<String, dynamic> json) => _$VerificationLinkFromJson(json);

@override final  String name;
@override final  String url;
@override final  String purpose;

/// Create a copy of VerificationLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerificationLinkCopyWith<_VerificationLink> get copyWith => __$VerificationLinkCopyWithImpl<_VerificationLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerificationLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerificationLink&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.purpose, purpose) || other.purpose == purpose));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,purpose);

@override
String toString() {
  return 'VerificationLink(name: $name, url: $url, purpose: $purpose)';
}


}

/// @nodoc
abstract mixin class _$VerificationLinkCopyWith<$Res> implements $VerificationLinkCopyWith<$Res> {
  factory _$VerificationLinkCopyWith(_VerificationLink value, $Res Function(_VerificationLink) _then) = __$VerificationLinkCopyWithImpl;
@override @useResult
$Res call({
 String name, String url, String purpose
});




}
/// @nodoc
class __$VerificationLinkCopyWithImpl<$Res>
    implements _$VerificationLinkCopyWith<$Res> {
  __$VerificationLinkCopyWithImpl(this._self, this._then);

  final _VerificationLink _self;
  final $Res Function(_VerificationLink) _then;

/// Create a copy of VerificationLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,Object? purpose = null,}) {
  return _then(_VerificationLink(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,purpose: null == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
