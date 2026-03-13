// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overlay_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OverlayConfig {

 double get devicePixelRatio; double get scaleFactor; double get scaleRectangle; double get widthSize; double get heightSize;
/// Create a copy of OverlayConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverlayConfigCopyWith<OverlayConfig> get copyWith => _$OverlayConfigCopyWithImpl<OverlayConfig>(this as OverlayConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverlayConfig&&(identical(other.devicePixelRatio, devicePixelRatio) || other.devicePixelRatio == devicePixelRatio)&&(identical(other.scaleFactor, scaleFactor) || other.scaleFactor == scaleFactor)&&(identical(other.scaleRectangle, scaleRectangle) || other.scaleRectangle == scaleRectangle)&&(identical(other.widthSize, widthSize) || other.widthSize == widthSize)&&(identical(other.heightSize, heightSize) || other.heightSize == heightSize));
}


@override
int get hashCode => Object.hash(runtimeType,devicePixelRatio,scaleFactor,scaleRectangle,widthSize,heightSize);

@override
String toString() {
  return 'OverlayConfig(devicePixelRatio: $devicePixelRatio, scaleFactor: $scaleFactor, scaleRectangle: $scaleRectangle, widthSize: $widthSize, heightSize: $heightSize)';
}


}

/// @nodoc
abstract mixin class $OverlayConfigCopyWith<$Res>  {
  factory $OverlayConfigCopyWith(OverlayConfig value, $Res Function(OverlayConfig) _then) = _$OverlayConfigCopyWithImpl;
@useResult
$Res call({
 double devicePixelRatio, double scaleFactor, double scaleRectangle, double widthSize, double heightSize
});




}
/// @nodoc
class _$OverlayConfigCopyWithImpl<$Res>
    implements $OverlayConfigCopyWith<$Res> {
  _$OverlayConfigCopyWithImpl(this._self, this._then);

  final OverlayConfig _self;
  final $Res Function(OverlayConfig) _then;

/// Create a copy of OverlayConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? devicePixelRatio = null,Object? scaleFactor = null,Object? scaleRectangle = null,Object? widthSize = null,Object? heightSize = null,}) {
  return _then(_self.copyWith(
devicePixelRatio: null == devicePixelRatio ? _self.devicePixelRatio : devicePixelRatio // ignore: cast_nullable_to_non_nullable
as double,scaleFactor: null == scaleFactor ? _self.scaleFactor : scaleFactor // ignore: cast_nullable_to_non_nullable
as double,scaleRectangle: null == scaleRectangle ? _self.scaleRectangle : scaleRectangle // ignore: cast_nullable_to_non_nullable
as double,widthSize: null == widthSize ? _self.widthSize : widthSize // ignore: cast_nullable_to_non_nullable
as double,heightSize: null == heightSize ? _self.heightSize : heightSize // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [OverlayConfig].
extension OverlayConfigPatterns on OverlayConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverlayConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverlayConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverlayConfig value)  $default,){
final _that = this;
switch (_that) {
case _OverlayConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverlayConfig value)?  $default,){
final _that = this;
switch (_that) {
case _OverlayConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double devicePixelRatio,  double scaleFactor,  double scaleRectangle,  double widthSize,  double heightSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverlayConfig() when $default != null:
return $default(_that.devicePixelRatio,_that.scaleFactor,_that.scaleRectangle,_that.widthSize,_that.heightSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double devicePixelRatio,  double scaleFactor,  double scaleRectangle,  double widthSize,  double heightSize)  $default,) {final _that = this;
switch (_that) {
case _OverlayConfig():
return $default(_that.devicePixelRatio,_that.scaleFactor,_that.scaleRectangle,_that.widthSize,_that.heightSize);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double devicePixelRatio,  double scaleFactor,  double scaleRectangle,  double widthSize,  double heightSize)?  $default,) {final _that = this;
switch (_that) {
case _OverlayConfig() when $default != null:
return $default(_that.devicePixelRatio,_that.scaleFactor,_that.scaleRectangle,_that.widthSize,_that.heightSize);case _:
  return null;

}
}

}

/// @nodoc


class _OverlayConfig extends OverlayConfig {
  const _OverlayConfig({required this.devicePixelRatio, this.scaleFactor = 0.14, this.scaleRectangle = 0.4, required this.widthSize, required this.heightSize}): super._();
  

@override final  double devicePixelRatio;
@override@JsonKey() final  double scaleFactor;
@override@JsonKey() final  double scaleRectangle;
@override final  double widthSize;
@override final  double heightSize;

/// Create a copy of OverlayConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverlayConfigCopyWith<_OverlayConfig> get copyWith => __$OverlayConfigCopyWithImpl<_OverlayConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverlayConfig&&(identical(other.devicePixelRatio, devicePixelRatio) || other.devicePixelRatio == devicePixelRatio)&&(identical(other.scaleFactor, scaleFactor) || other.scaleFactor == scaleFactor)&&(identical(other.scaleRectangle, scaleRectangle) || other.scaleRectangle == scaleRectangle)&&(identical(other.widthSize, widthSize) || other.widthSize == widthSize)&&(identical(other.heightSize, heightSize) || other.heightSize == heightSize));
}


@override
int get hashCode => Object.hash(runtimeType,devicePixelRatio,scaleFactor,scaleRectangle,widthSize,heightSize);

@override
String toString() {
  return 'OverlayConfig(devicePixelRatio: $devicePixelRatio, scaleFactor: $scaleFactor, scaleRectangle: $scaleRectangle, widthSize: $widthSize, heightSize: $heightSize)';
}


}

/// @nodoc
abstract mixin class _$OverlayConfigCopyWith<$Res> implements $OverlayConfigCopyWith<$Res> {
  factory _$OverlayConfigCopyWith(_OverlayConfig value, $Res Function(_OverlayConfig) _then) = __$OverlayConfigCopyWithImpl;
@override @useResult
$Res call({
 double devicePixelRatio, double scaleFactor, double scaleRectangle, double widthSize, double heightSize
});




}
/// @nodoc
class __$OverlayConfigCopyWithImpl<$Res>
    implements _$OverlayConfigCopyWith<$Res> {
  __$OverlayConfigCopyWithImpl(this._self, this._then);

  final _OverlayConfig _self;
  final $Res Function(_OverlayConfig) _then;

/// Create a copy of OverlayConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? devicePixelRatio = null,Object? scaleFactor = null,Object? scaleRectangle = null,Object? widthSize = null,Object? heightSize = null,}) {
  return _then(_OverlayConfig(
devicePixelRatio: null == devicePixelRatio ? _self.devicePixelRatio : devicePixelRatio // ignore: cast_nullable_to_non_nullable
as double,scaleFactor: null == scaleFactor ? _self.scaleFactor : scaleFactor // ignore: cast_nullable_to_non_nullable
as double,scaleRectangle: null == scaleRectangle ? _self.scaleRectangle : scaleRectangle // ignore: cast_nullable_to_non_nullable
as double,widthSize: null == widthSize ? _self.widthSize : widthSize // ignore: cast_nullable_to_non_nullable
as double,heightSize: null == heightSize ? _self.heightSize : heightSize // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
