// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overlay_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OverlayEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverlayEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverlayEvent()';
}


}

/// @nodoc
class $OverlayEventCopyWith<$Res>  {
$OverlayEventCopyWith(OverlayEvent _, $Res Function(OverlayEvent) __);
}


/// Adds pattern-matching-related methods to [OverlayEvent].
extension OverlayEventPatterns on OverlayEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitConfig value)?  initConfig,TResult Function( _UpdateConfig value)?  updateConfig,TResult Function( _ShowOverlay value)?  showOverlay,TResult Function( _ShowListFeatureOverlay value)?  showListFeatureOverlay,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitConfig() when initConfig != null:
return initConfig(_that);case _UpdateConfig() when updateConfig != null:
return updateConfig(_that);case _ShowOverlay() when showOverlay != null:
return showOverlay(_that);case _ShowListFeatureOverlay() when showListFeatureOverlay != null:
return showListFeatureOverlay(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitConfig value)  initConfig,required TResult Function( _UpdateConfig value)  updateConfig,required TResult Function( _ShowOverlay value)  showOverlay,required TResult Function( _ShowListFeatureOverlay value)  showListFeatureOverlay,}){
final _that = this;
switch (_that) {
case _InitConfig():
return initConfig(_that);case _UpdateConfig():
return updateConfig(_that);case _ShowOverlay():
return showOverlay(_that);case _ShowListFeatureOverlay():
return showListFeatureOverlay(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitConfig value)?  initConfig,TResult? Function( _UpdateConfig value)?  updateConfig,TResult? Function( _ShowOverlay value)?  showOverlay,TResult? Function( _ShowListFeatureOverlay value)?  showListFeatureOverlay,}){
final _that = this;
switch (_that) {
case _InitConfig() when initConfig != null:
return initConfig(_that);case _UpdateConfig() when updateConfig != null:
return updateConfig(_that);case _ShowOverlay() when showOverlay != null:
return showOverlay(_that);case _ShowListFeatureOverlay() when showListFeatureOverlay != null:
return showListFeatureOverlay(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( OverlayConfig config)?  initConfig,TResult Function( OverlayConfig config)?  updateConfig,TResult Function()?  showOverlay,TResult Function()?  showListFeatureOverlay,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitConfig() when initConfig != null:
return initConfig(_that.config);case _UpdateConfig() when updateConfig != null:
return updateConfig(_that.config);case _ShowOverlay() when showOverlay != null:
return showOverlay();case _ShowListFeatureOverlay() when showListFeatureOverlay != null:
return showListFeatureOverlay();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( OverlayConfig config)  initConfig,required TResult Function( OverlayConfig config)  updateConfig,required TResult Function()  showOverlay,required TResult Function()  showListFeatureOverlay,}) {final _that = this;
switch (_that) {
case _InitConfig():
return initConfig(_that.config);case _UpdateConfig():
return updateConfig(_that.config);case _ShowOverlay():
return showOverlay();case _ShowListFeatureOverlay():
return showListFeatureOverlay();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( OverlayConfig config)?  initConfig,TResult? Function( OverlayConfig config)?  updateConfig,TResult? Function()?  showOverlay,TResult? Function()?  showListFeatureOverlay,}) {final _that = this;
switch (_that) {
case _InitConfig() when initConfig != null:
return initConfig(_that.config);case _UpdateConfig() when updateConfig != null:
return updateConfig(_that.config);case _ShowOverlay() when showOverlay != null:
return showOverlay();case _ShowListFeatureOverlay() when showListFeatureOverlay != null:
return showListFeatureOverlay();case _:
  return null;

}
}

}

/// @nodoc


class _InitConfig implements OverlayEvent {
  const _InitConfig(this.config);
  

 final  OverlayConfig config;

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitConfigCopyWith<_InitConfig> get copyWith => __$InitConfigCopyWithImpl<_InitConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitConfig&&(identical(other.config, config) || other.config == config));
}


@override
int get hashCode => Object.hash(runtimeType,config);

@override
String toString() {
  return 'OverlayEvent.initConfig(config: $config)';
}


}

/// @nodoc
abstract mixin class _$InitConfigCopyWith<$Res> implements $OverlayEventCopyWith<$Res> {
  factory _$InitConfigCopyWith(_InitConfig value, $Res Function(_InitConfig) _then) = __$InitConfigCopyWithImpl;
@useResult
$Res call({
 OverlayConfig config
});


$OverlayConfigCopyWith<$Res> get config;

}
/// @nodoc
class __$InitConfigCopyWithImpl<$Res>
    implements _$InitConfigCopyWith<$Res> {
  __$InitConfigCopyWithImpl(this._self, this._then);

  final _InitConfig _self;
  final $Res Function(_InitConfig) _then;

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? config = null,}) {
  return _then(_InitConfig(
null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as OverlayConfig,
  ));
}

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverlayConfigCopyWith<$Res> get config {
  
  return $OverlayConfigCopyWith<$Res>(_self.config, (value) {
    return _then(_self.copyWith(config: value));
  });
}
}

/// @nodoc


class _UpdateConfig implements OverlayEvent {
  const _UpdateConfig(this.config);
  

 final  OverlayConfig config;

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateConfigCopyWith<_UpdateConfig> get copyWith => __$UpdateConfigCopyWithImpl<_UpdateConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateConfig&&(identical(other.config, config) || other.config == config));
}


@override
int get hashCode => Object.hash(runtimeType,config);

@override
String toString() {
  return 'OverlayEvent.updateConfig(config: $config)';
}


}

/// @nodoc
abstract mixin class _$UpdateConfigCopyWith<$Res> implements $OverlayEventCopyWith<$Res> {
  factory _$UpdateConfigCopyWith(_UpdateConfig value, $Res Function(_UpdateConfig) _then) = __$UpdateConfigCopyWithImpl;
@useResult
$Res call({
 OverlayConfig config
});


$OverlayConfigCopyWith<$Res> get config;

}
/// @nodoc
class __$UpdateConfigCopyWithImpl<$Res>
    implements _$UpdateConfigCopyWith<$Res> {
  __$UpdateConfigCopyWithImpl(this._self, this._then);

  final _UpdateConfig _self;
  final $Res Function(_UpdateConfig) _then;

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? config = null,}) {
  return _then(_UpdateConfig(
null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as OverlayConfig,
  ));
}

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverlayConfigCopyWith<$Res> get config {
  
  return $OverlayConfigCopyWith<$Res>(_self.config, (value) {
    return _then(_self.copyWith(config: value));
  });
}
}

/// @nodoc


class _ShowOverlay implements OverlayEvent {
  const _ShowOverlay();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowOverlay);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverlayEvent.showOverlay()';
}


}




/// @nodoc


class _ShowListFeatureOverlay implements OverlayEvent {
  const _ShowListFeatureOverlay();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowListFeatureOverlay);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverlayEvent.showListFeatureOverlay()';
}


}




// dart format on
