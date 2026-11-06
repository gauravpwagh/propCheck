// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedProperty {

 int? get id; String get name; EstimateMode get mode; int? get budget; String get profileId; int get rateVersion; PropertyInput get input; bool get areaInSqm; DateTime get createdAt; DateTime get updatedAt; bool get isArchived;
/// Create a copy of SavedProperty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedPropertyCopyWith<SavedProperty> get copyWith => _$SavedPropertyCopyWithImpl<SavedProperty>(this as SavedProperty, _$identity);

  /// Serializes this SavedProperty to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedProperty&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.rateVersion, rateVersion) || other.rateVersion == rateVersion)&&(identical(other.input, input) || other.input == input)&&(identical(other.areaInSqm, areaInSqm) || other.areaInSqm == areaInSqm)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mode,budget,profileId,rateVersion,input,areaInSqm,createdAt,updatedAt,isArchived);

@override
String toString() {
  return 'SavedProperty(id: $id, name: $name, mode: $mode, budget: $budget, profileId: $profileId, rateVersion: $rateVersion, input: $input, areaInSqm: $areaInSqm, createdAt: $createdAt, updatedAt: $updatedAt, isArchived: $isArchived)';
}


}

/// @nodoc
abstract mixin class $SavedPropertyCopyWith<$Res>  {
  factory $SavedPropertyCopyWith(SavedProperty value, $Res Function(SavedProperty) _then) = _$SavedPropertyCopyWithImpl;
@useResult
$Res call({
 int? id, String name, EstimateMode mode, int? budget, String profileId, int rateVersion, PropertyInput input, bool areaInSqm, DateTime createdAt, DateTime updatedAt, bool isArchived
});


$PropertyInputCopyWith<$Res> get input;

}
/// @nodoc
class _$SavedPropertyCopyWithImpl<$Res>
    implements $SavedPropertyCopyWith<$Res> {
  _$SavedPropertyCopyWithImpl(this._self, this._then);

  final SavedProperty _self;
  final $Res Function(SavedProperty) _then;

/// Create a copy of SavedProperty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? mode = null,Object? budget = freezed,Object? profileId = null,Object? rateVersion = null,Object? input = null,Object? areaInSqm = null,Object? createdAt = null,Object? updatedAt = null,Object? isArchived = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as EstimateMode,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,rateVersion: null == rateVersion ? _self.rateVersion : rateVersion // ignore: cast_nullable_to_non_nullable
as int,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as PropertyInput,areaInSqm: null == areaInSqm ? _self.areaInSqm : areaInSqm // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SavedProperty
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyInputCopyWith<$Res> get input {
  
  return $PropertyInputCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}
}


/// Adds pattern-matching-related methods to [SavedProperty].
extension SavedPropertyPatterns on SavedProperty {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedProperty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedProperty() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedProperty value)  $default,){
final _that = this;
switch (_that) {
case _SavedProperty():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedProperty value)?  $default,){
final _that = this;
switch (_that) {
case _SavedProperty() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String name,  EstimateMode mode,  int? budget,  String profileId,  int rateVersion,  PropertyInput input,  bool areaInSqm,  DateTime createdAt,  DateTime updatedAt,  bool isArchived)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedProperty() when $default != null:
return $default(_that.id,_that.name,_that.mode,_that.budget,_that.profileId,_that.rateVersion,_that.input,_that.areaInSqm,_that.createdAt,_that.updatedAt,_that.isArchived);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String name,  EstimateMode mode,  int? budget,  String profileId,  int rateVersion,  PropertyInput input,  bool areaInSqm,  DateTime createdAt,  DateTime updatedAt,  bool isArchived)  $default,) {final _that = this;
switch (_that) {
case _SavedProperty():
return $default(_that.id,_that.name,_that.mode,_that.budget,_that.profileId,_that.rateVersion,_that.input,_that.areaInSqm,_that.createdAt,_that.updatedAt,_that.isArchived);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String name,  EstimateMode mode,  int? budget,  String profileId,  int rateVersion,  PropertyInput input,  bool areaInSqm,  DateTime createdAt,  DateTime updatedAt,  bool isArchived)?  $default,) {final _that = this;
switch (_that) {
case _SavedProperty() when $default != null:
return $default(_that.id,_that.name,_that.mode,_that.budget,_that.profileId,_that.rateVersion,_that.input,_that.areaInSqm,_that.createdAt,_that.updatedAt,_that.isArchived);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedProperty implements SavedProperty {
  const _SavedProperty({this.id, this.name = '', required this.mode, this.budget, required this.profileId, required this.rateVersion, required this.input, this.areaInSqm = false, required this.createdAt, required this.updatedAt, this.isArchived = false});
  factory _SavedProperty.fromJson(Map<String, dynamic> json) => _$SavedPropertyFromJson(json);

@override final  int? id;
@override@JsonKey() final  String name;
@override final  EstimateMode mode;
@override final  int? budget;
@override final  String profileId;
@override final  int rateVersion;
@override final  PropertyInput input;
@override@JsonKey() final  bool areaInSqm;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey() final  bool isArchived;

/// Create a copy of SavedProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedPropertyCopyWith<_SavedProperty> get copyWith => __$SavedPropertyCopyWithImpl<_SavedProperty>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedPropertyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedProperty&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.rateVersion, rateVersion) || other.rateVersion == rateVersion)&&(identical(other.input, input) || other.input == input)&&(identical(other.areaInSqm, areaInSqm) || other.areaInSqm == areaInSqm)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mode,budget,profileId,rateVersion,input,areaInSqm,createdAt,updatedAt,isArchived);

@override
String toString() {
  return 'SavedProperty(id: $id, name: $name, mode: $mode, budget: $budget, profileId: $profileId, rateVersion: $rateVersion, input: $input, areaInSqm: $areaInSqm, createdAt: $createdAt, updatedAt: $updatedAt, isArchived: $isArchived)';
}


}

/// @nodoc
abstract mixin class _$SavedPropertyCopyWith<$Res> implements $SavedPropertyCopyWith<$Res> {
  factory _$SavedPropertyCopyWith(_SavedProperty value, $Res Function(_SavedProperty) _then) = __$SavedPropertyCopyWithImpl;
@override @useResult
$Res call({
 int? id, String name, EstimateMode mode, int? budget, String profileId, int rateVersion, PropertyInput input, bool areaInSqm, DateTime createdAt, DateTime updatedAt, bool isArchived
});


@override $PropertyInputCopyWith<$Res> get input;

}
/// @nodoc
class __$SavedPropertyCopyWithImpl<$Res>
    implements _$SavedPropertyCopyWith<$Res> {
  __$SavedPropertyCopyWithImpl(this._self, this._then);

  final _SavedProperty _self;
  final $Res Function(_SavedProperty) _then;

/// Create a copy of SavedProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? mode = null,Object? budget = freezed,Object? profileId = null,Object? rateVersion = null,Object? input = null,Object? areaInSqm = null,Object? createdAt = null,Object? updatedAt = null,Object? isArchived = null,}) {
  return _then(_SavedProperty(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as EstimateMode,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,rateVersion: null == rateVersion ? _self.rateVersion : rateVersion // ignore: cast_nullable_to_non_nullable
as int,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as PropertyInput,areaInSqm: null == areaInSqm ? _self.areaInSqm : areaInSqm // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SavedProperty
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyInputCopyWith<$Res> get input {
  
  return $PropertyInputCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}
}

// dart format on
