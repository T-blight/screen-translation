// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overlay_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OverlayState {

 OverlayVisibility get visibility; OverlayFormType get formType; OverlayStyle get style; OverlayUnion get overlayUnion; OverlayConfig? get overlayConfig; OverlayPosition? get overlayPosition;
/// Create a copy of OverlayState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverlayStateCopyWith<OverlayState> get copyWith => _$OverlayStateCopyWithImpl<OverlayState>(this as OverlayState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverlayState&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.formType, formType) || other.formType == formType)&&(identical(other.style, style) || other.style == style)&&(identical(other.overlayUnion, overlayUnion) || other.overlayUnion == overlayUnion)&&(identical(other.overlayConfig, overlayConfig) || other.overlayConfig == overlayConfig)&&(identical(other.overlayPosition, overlayPosition) || other.overlayPosition == overlayPosition));
}


@override
int get hashCode => Object.hash(runtimeType,visibility,formType,style,overlayUnion,overlayConfig,overlayPosition);

@override
String toString() {
  return 'OverlayState(visibility: $visibility, formType: $formType, style: $style, overlayUnion: $overlayUnion, overlayConfig: $overlayConfig, overlayPosition: $overlayPosition)';
}


}

/// @nodoc
abstract mixin class $OverlayStateCopyWith<$Res>  {
  factory $OverlayStateCopyWith(OverlayState value, $Res Function(OverlayState) _then) = _$OverlayStateCopyWithImpl;
@useResult
$Res call({
 OverlayVisibility visibility, OverlayFormType formType, OverlayStyle style, OverlayUnion overlayUnion, OverlayConfig? overlayConfig, OverlayPosition? overlayPosition
});


$OverlayConfigCopyWith<$Res>? get overlayConfig;

}
/// @nodoc
class _$OverlayStateCopyWithImpl<$Res>
    implements $OverlayStateCopyWith<$Res> {
  _$OverlayStateCopyWithImpl(this._self, this._then);

  final OverlayState _self;
  final $Res Function(OverlayState) _then;

/// Create a copy of OverlayState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visibility = null,Object? formType = null,Object? style = null,Object? overlayUnion = null,Object? overlayConfig = freezed,Object? overlayPosition = freezed,}) {
  return _then(_self.copyWith(
visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as OverlayVisibility,formType: null == formType ? _self.formType : formType // ignore: cast_nullable_to_non_nullable
as OverlayFormType,style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as OverlayStyle,overlayUnion: null == overlayUnion ? _self.overlayUnion : overlayUnion // ignore: cast_nullable_to_non_nullable
as OverlayUnion,overlayConfig: freezed == overlayConfig ? _self.overlayConfig : overlayConfig // ignore: cast_nullable_to_non_nullable
as OverlayConfig?,overlayPosition: freezed == overlayPosition ? _self.overlayPosition : overlayPosition // ignore: cast_nullable_to_non_nullable
as OverlayPosition?,
  ));
}
/// Create a copy of OverlayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverlayConfigCopyWith<$Res>? get overlayConfig {
    if (_self.overlayConfig == null) {
    return null;
  }

  return $OverlayConfigCopyWith<$Res>(_self.overlayConfig!, (value) {
    return _then(_self.copyWith(overlayConfig: value));
  });
}
}


/// Adds pattern-matching-related methods to [OverlayState].
extension OverlayStatePatterns on OverlayState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverlayState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverlayState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverlayState value)  $default,){
final _that = this;
switch (_that) {
case _OverlayState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverlayState value)?  $default,){
final _that = this;
switch (_that) {
case _OverlayState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OverlayVisibility visibility,  OverlayFormType formType,  OverlayStyle style,  OverlayUnion overlayUnion,  OverlayConfig? overlayConfig,  OverlayPosition? overlayPosition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverlayState() when $default != null:
return $default(_that.visibility,_that.formType,_that.style,_that.overlayUnion,_that.overlayConfig,_that.overlayPosition);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OverlayVisibility visibility,  OverlayFormType formType,  OverlayStyle style,  OverlayUnion overlayUnion,  OverlayConfig? overlayConfig,  OverlayPosition? overlayPosition)  $default,) {final _that = this;
switch (_that) {
case _OverlayState():
return $default(_that.visibility,_that.formType,_that.style,_that.overlayUnion,_that.overlayConfig,_that.overlayPosition);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OverlayVisibility visibility,  OverlayFormType formType,  OverlayStyle style,  OverlayUnion overlayUnion,  OverlayConfig? overlayConfig,  OverlayPosition? overlayPosition)?  $default,) {final _that = this;
switch (_that) {
case _OverlayState() when $default != null:
return $default(_that.visibility,_that.formType,_that.style,_that.overlayUnion,_that.overlayConfig,_that.overlayPosition);case _:
  return null;

}
}

}

/// @nodoc


class _OverlayState extends OverlayState {
  const _OverlayState({this.visibility = OverlayVisibility.closed, this.formType = OverlayFormType.circle, this.style = OverlayStyle.standard, this.overlayUnion = OverlayUnion.loading, this.overlayConfig, this.overlayPosition}): super._();
  

@override@JsonKey() final  OverlayVisibility visibility;
@override@JsonKey() final  OverlayFormType formType;
@override@JsonKey() final  OverlayStyle style;
@override@JsonKey() final  OverlayUnion overlayUnion;
@override final  OverlayConfig? overlayConfig;
@override final  OverlayPosition? overlayPosition;

/// Create a copy of OverlayState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverlayStateCopyWith<_OverlayState> get copyWith => __$OverlayStateCopyWithImpl<_OverlayState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverlayState&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.formType, formType) || other.formType == formType)&&(identical(other.style, style) || other.style == style)&&(identical(other.overlayUnion, overlayUnion) || other.overlayUnion == overlayUnion)&&(identical(other.overlayConfig, overlayConfig) || other.overlayConfig == overlayConfig)&&(identical(other.overlayPosition, overlayPosition) || other.overlayPosition == overlayPosition));
}


@override
int get hashCode => Object.hash(runtimeType,visibility,formType,style,overlayUnion,overlayConfig,overlayPosition);

@override
String toString() {
  return 'OverlayState(visibility: $visibility, formType: $formType, style: $style, overlayUnion: $overlayUnion, overlayConfig: $overlayConfig, overlayPosition: $overlayPosition)';
}


}

/// @nodoc
abstract mixin class _$OverlayStateCopyWith<$Res> implements $OverlayStateCopyWith<$Res> {
  factory _$OverlayStateCopyWith(_OverlayState value, $Res Function(_OverlayState) _then) = __$OverlayStateCopyWithImpl;
@override @useResult
$Res call({
 OverlayVisibility visibility, OverlayFormType formType, OverlayStyle style, OverlayUnion overlayUnion, OverlayConfig? overlayConfig, OverlayPosition? overlayPosition
});


@override $OverlayConfigCopyWith<$Res>? get overlayConfig;

}
/// @nodoc
class __$OverlayStateCopyWithImpl<$Res>
    implements _$OverlayStateCopyWith<$Res> {
  __$OverlayStateCopyWithImpl(this._self, this._then);

  final _OverlayState _self;
  final $Res Function(_OverlayState) _then;

/// Create a copy of OverlayState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visibility = null,Object? formType = null,Object? style = null,Object? overlayUnion = null,Object? overlayConfig = freezed,Object? overlayPosition = freezed,}) {
  return _then(_OverlayState(
visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as OverlayVisibility,formType: null == formType ? _self.formType : formType // ignore: cast_nullable_to_non_nullable
as OverlayFormType,style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as OverlayStyle,overlayUnion: null == overlayUnion ? _self.overlayUnion : overlayUnion // ignore: cast_nullable_to_non_nullable
as OverlayUnion,overlayConfig: freezed == overlayConfig ? _self.overlayConfig : overlayConfig // ignore: cast_nullable_to_non_nullable
as OverlayConfig?,overlayPosition: freezed == overlayPosition ? _self.overlayPosition : overlayPosition // ignore: cast_nullable_to_non_nullable
as OverlayPosition?,
  ));
}

/// Create a copy of OverlayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverlayConfigCopyWith<$Res>? get overlayConfig {
    if (_self.overlayConfig == null) {
    return null;
  }

  return $OverlayConfigCopyWith<$Res>(_self.overlayConfig!, (value) {
    return _then(_self.copyWith(overlayConfig: value));
  });
}
}

// dart format on
