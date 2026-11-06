// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wizard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WizardDraft {

/// Set when editing a saved property.
 int? get propertyId; String get name; String get profileId; EstimateMode get mode; int? get budget; PropertyInput get input; bool get areaInSqm;
/// Create a copy of WizardDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WizardDraftCopyWith<WizardDraft> get copyWith => _$WizardDraftCopyWithImpl<WizardDraft>(this as WizardDraft, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WizardDraft&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.input, input) || other.input == input)&&(identical(other.areaInSqm, areaInSqm) || other.areaInSqm == areaInSqm));
}


@override
int get hashCode => Object.hash(runtimeType,propertyId,name,profileId,mode,budget,input,areaInSqm);

@override
String toString() {
  return 'WizardDraft(propertyId: $propertyId, name: $name, profileId: $profileId, mode: $mode, budget: $budget, input: $input, areaInSqm: $areaInSqm)';
}


}

/// @nodoc
abstract mixin class $WizardDraftCopyWith<$Res>  {
  factory $WizardDraftCopyWith(WizardDraft value, $Res Function(WizardDraft) _then) = _$WizardDraftCopyWithImpl;
@useResult
$Res call({
 int? propertyId, String name, String profileId, EstimateMode mode, int? budget, PropertyInput input, bool areaInSqm
});


$PropertyInputCopyWith<$Res> get input;

}
/// @nodoc
class _$WizardDraftCopyWithImpl<$Res>
    implements $WizardDraftCopyWith<$Res> {
  _$WizardDraftCopyWithImpl(this._self, this._then);

  final WizardDraft _self;
  final $Res Function(WizardDraft) _then;

/// Create a copy of WizardDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? propertyId = freezed,Object? name = null,Object? profileId = null,Object? mode = null,Object? budget = freezed,Object? input = null,Object? areaInSqm = null,}) {
  return _then(_self.copyWith(
propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as EstimateMode,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as PropertyInput,areaInSqm: null == areaInSqm ? _self.areaInSqm : areaInSqm // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of WizardDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyInputCopyWith<$Res> get input {
  
  return $PropertyInputCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}
}


/// Adds pattern-matching-related methods to [WizardDraft].
extension WizardDraftPatterns on WizardDraft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WizardDraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WizardDraft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WizardDraft value)  $default,){
final _that = this;
switch (_that) {
case _WizardDraft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WizardDraft value)?  $default,){
final _that = this;
switch (_that) {
case _WizardDraft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? propertyId,  String name,  String profileId,  EstimateMode mode,  int? budget,  PropertyInput input,  bool areaInSqm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WizardDraft() when $default != null:
return $default(_that.propertyId,_that.name,_that.profileId,_that.mode,_that.budget,_that.input,_that.areaInSqm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? propertyId,  String name,  String profileId,  EstimateMode mode,  int? budget,  PropertyInput input,  bool areaInSqm)  $default,) {final _that = this;
switch (_that) {
case _WizardDraft():
return $default(_that.propertyId,_that.name,_that.profileId,_that.mode,_that.budget,_that.input,_that.areaInSqm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? propertyId,  String name,  String profileId,  EstimateMode mode,  int? budget,  PropertyInput input,  bool areaInSqm)?  $default,) {final _that = this;
switch (_that) {
case _WizardDraft() when $default != null:
return $default(_that.propertyId,_that.name,_that.profileId,_that.mode,_that.budget,_that.input,_that.areaInSqm);case _:
  return null;

}
}

}

/// @nodoc


class _WizardDraft extends WizardDraft {
  const _WizardDraft({this.propertyId, this.name = '', required this.profileId, this.mode = EstimateMode.priceToTotal, this.budget, required this.input, this.areaInSqm = false}): super._();
  

/// Set when editing a saved property.
@override final  int? propertyId;
@override@JsonKey() final  String name;
@override final  String profileId;
@override@JsonKey() final  EstimateMode mode;
@override final  int? budget;
@override final  PropertyInput input;
@override@JsonKey() final  bool areaInSqm;

/// Create a copy of WizardDraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WizardDraftCopyWith<_WizardDraft> get copyWith => __$WizardDraftCopyWithImpl<_WizardDraft>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WizardDraft&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.input, input) || other.input == input)&&(identical(other.areaInSqm, areaInSqm) || other.areaInSqm == areaInSqm));
}


@override
int get hashCode => Object.hash(runtimeType,propertyId,name,profileId,mode,budget,input,areaInSqm);

@override
String toString() {
  return 'WizardDraft(propertyId: $propertyId, name: $name, profileId: $profileId, mode: $mode, budget: $budget, input: $input, areaInSqm: $areaInSqm)';
}


}

/// @nodoc
abstract mixin class _$WizardDraftCopyWith<$Res> implements $WizardDraftCopyWith<$Res> {
  factory _$WizardDraftCopyWith(_WizardDraft value, $Res Function(_WizardDraft) _then) = __$WizardDraftCopyWithImpl;
@override @useResult
$Res call({
 int? propertyId, String name, String profileId, EstimateMode mode, int? budget, PropertyInput input, bool areaInSqm
});


@override $PropertyInputCopyWith<$Res> get input;

}
/// @nodoc
class __$WizardDraftCopyWithImpl<$Res>
    implements _$WizardDraftCopyWith<$Res> {
  __$WizardDraftCopyWithImpl(this._self, this._then);

  final _WizardDraft _self;
  final $Res Function(_WizardDraft) _then;

/// Create a copy of WizardDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? propertyId = freezed,Object? name = null,Object? profileId = null,Object? mode = null,Object? budget = freezed,Object? input = null,Object? areaInSqm = null,}) {
  return _then(_WizardDraft(
propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as EstimateMode,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as PropertyInput,areaInSqm: null == areaInSqm ? _self.areaInSqm : areaInSqm // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of WizardDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyInputCopyWith<$Res> get input {
  
  return $PropertyInputCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}
}

/// @nodoc
mixin _$WizardState {

 WizardDraft get draft; WizardStep get step;
/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WizardStateCopyWith<WizardState> get copyWith => _$WizardStateCopyWithImpl<WizardState>(this as WizardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WizardState&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.step, step) || other.step == step));
}


@override
int get hashCode => Object.hash(runtimeType,draft,step);

@override
String toString() {
  return 'WizardState(draft: $draft, step: $step)';
}


}

/// @nodoc
abstract mixin class $WizardStateCopyWith<$Res>  {
  factory $WizardStateCopyWith(WizardState value, $Res Function(WizardState) _then) = _$WizardStateCopyWithImpl;
@useResult
$Res call({
 WizardDraft draft, WizardStep step
});


$WizardDraftCopyWith<$Res> get draft;

}
/// @nodoc
class _$WizardStateCopyWithImpl<$Res>
    implements $WizardStateCopyWith<$Res> {
  _$WizardStateCopyWithImpl(this._self, this._then);

  final WizardState _self;
  final $Res Function(WizardState) _then;

/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? draft = null,Object? step = null,}) {
  return _then(_self.copyWith(
draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as WizardDraft,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as WizardStep,
  ));
}
/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WizardDraftCopyWith<$Res> get draft {
  
  return $WizardDraftCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}


/// Adds pattern-matching-related methods to [WizardState].
extension WizardStatePatterns on WizardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WizardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WizardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WizardState value)  $default,){
final _that = this;
switch (_that) {
case _WizardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WizardState value)?  $default,){
final _that = this;
switch (_that) {
case _WizardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WizardDraft draft,  WizardStep step)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WizardState() when $default != null:
return $default(_that.draft,_that.step);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WizardDraft draft,  WizardStep step)  $default,) {final _that = this;
switch (_that) {
case _WizardState():
return $default(_that.draft,_that.step);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WizardDraft draft,  WizardStep step)?  $default,) {final _that = this;
switch (_that) {
case _WizardState() when $default != null:
return $default(_that.draft,_that.step);case _:
  return null;

}
}

}

/// @nodoc


class _WizardState extends WizardState {
  const _WizardState({required this.draft, this.step = WizardStep.mode}): super._();
  

@override final  WizardDraft draft;
@override@JsonKey() final  WizardStep step;

/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WizardStateCopyWith<_WizardState> get copyWith => __$WizardStateCopyWithImpl<_WizardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WizardState&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.step, step) || other.step == step));
}


@override
int get hashCode => Object.hash(runtimeType,draft,step);

@override
String toString() {
  return 'WizardState(draft: $draft, step: $step)';
}


}

/// @nodoc
abstract mixin class _$WizardStateCopyWith<$Res> implements $WizardStateCopyWith<$Res> {
  factory _$WizardStateCopyWith(_WizardState value, $Res Function(_WizardState) _then) = __$WizardStateCopyWithImpl;
@override @useResult
$Res call({
 WizardDraft draft, WizardStep step
});


@override $WizardDraftCopyWith<$Res> get draft;

}
/// @nodoc
class __$WizardStateCopyWithImpl<$Res>
    implements _$WizardStateCopyWith<$Res> {
  __$WizardStateCopyWithImpl(this._self, this._then);

  final _WizardState _self;
  final $Res Function(_WizardState) _then;

/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? draft = null,Object? step = null,}) {
  return _then(_WizardState(
draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as WizardDraft,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as WizardStep,
  ));
}

/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WizardDraftCopyWith<$Res> get draft {
  
  return $WizardDraftCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}

// dart format on
