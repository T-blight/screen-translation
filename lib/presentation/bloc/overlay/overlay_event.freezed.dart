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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LaunchOverlay value)?  launchOverlay,TResult Function( UpdateOverlay value)?  updateOverlay,TResult Function( ShowOverlay value)?  showOverlay,TResult Function( SwitchFeatureOverlay value)?  switchFeatureOverlay,TResult Function( CheckBehaviourOverlay value)?  checkBehaviourOverlay,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LaunchOverlay() when launchOverlay != null:
return launchOverlay(_that);case UpdateOverlay() when updateOverlay != null:
return updateOverlay(_that);case ShowOverlay() when showOverlay != null:
return showOverlay(_that);case SwitchFeatureOverlay() when switchFeatureOverlay != null:
return switchFeatureOverlay(_that);case CheckBehaviourOverlay() when checkBehaviourOverlay != null:
return checkBehaviourOverlay(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LaunchOverlay value)  launchOverlay,required TResult Function( UpdateOverlay value)  updateOverlay,required TResult Function( ShowOverlay value)  showOverlay,required TResult Function( SwitchFeatureOverlay value)  switchFeatureOverlay,required TResult Function( CheckBehaviourOverlay value)  checkBehaviourOverlay,}){
final _that = this;
switch (_that) {
case LaunchOverlay():
return launchOverlay(_that);case UpdateOverlay():
return updateOverlay(_that);case ShowOverlay():
return showOverlay(_that);case SwitchFeatureOverlay():
return switchFeatureOverlay(_that);case CheckBehaviourOverlay():
return checkBehaviourOverlay(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LaunchOverlay value)?  launchOverlay,TResult? Function( UpdateOverlay value)?  updateOverlay,TResult? Function( ShowOverlay value)?  showOverlay,TResult? Function( SwitchFeatureOverlay value)?  switchFeatureOverlay,TResult? Function( CheckBehaviourOverlay value)?  checkBehaviourOverlay,}){
final _that = this;
switch (_that) {
case LaunchOverlay() when launchOverlay != null:
return launchOverlay(_that);case UpdateOverlay() when updateOverlay != null:
return updateOverlay(_that);case ShowOverlay() when showOverlay != null:
return showOverlay(_that);case SwitchFeatureOverlay() when switchFeatureOverlay != null:
return switchFeatureOverlay(_that);case CheckBehaviourOverlay() when checkBehaviourOverlay != null:
return checkBehaviourOverlay(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( OverlayConfig? config)?  launchOverlay,TResult Function( OverlayConfig? config)?  updateOverlay,TResult Function()?  showOverlay,TResult Function()?  switchFeatureOverlay,TResult Function()?  checkBehaviourOverlay,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LaunchOverlay() when launchOverlay != null:
return launchOverlay(_that.config);case UpdateOverlay() when updateOverlay != null:
return updateOverlay(_that.config);case ShowOverlay() when showOverlay != null:
return showOverlay();case SwitchFeatureOverlay() when switchFeatureOverlay != null:
return switchFeatureOverlay();case CheckBehaviourOverlay() when checkBehaviourOverlay != null:
return checkBehaviourOverlay();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( OverlayConfig? config)  launchOverlay,required TResult Function( OverlayConfig? config)  updateOverlay,required TResult Function()  showOverlay,required TResult Function()  switchFeatureOverlay,required TResult Function()  checkBehaviourOverlay,}) {final _that = this;
switch (_that) {
case LaunchOverlay():
return launchOverlay(_that.config);case UpdateOverlay():
return updateOverlay(_that.config);case ShowOverlay():
return showOverlay();case SwitchFeatureOverlay():
return switchFeatureOverlay();case CheckBehaviourOverlay():
return checkBehaviourOverlay();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( OverlayConfig? config)?  launchOverlay,TResult? Function( OverlayConfig? config)?  updateOverlay,TResult? Function()?  showOverlay,TResult? Function()?  switchFeatureOverlay,TResult? Function()?  checkBehaviourOverlay,}) {final _that = this;
switch (_that) {
case LaunchOverlay() when launchOverlay != null:
return launchOverlay(_that.config);case UpdateOverlay() when updateOverlay != null:
return updateOverlay(_that.config);case ShowOverlay() when showOverlay != null:
return showOverlay();case SwitchFeatureOverlay() when switchFeatureOverlay != null:
return switchFeatureOverlay();case CheckBehaviourOverlay() when checkBehaviourOverlay != null:
return checkBehaviourOverlay();case _:
  return null;

}
}

}

/// @nodoc


class LaunchOverlay implements OverlayEvent {
  const LaunchOverlay({this.config});
  

 final  OverlayConfig? config;

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LaunchOverlayCopyWith<LaunchOverlay> get copyWith => _$LaunchOverlayCopyWithImpl<LaunchOverlay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LaunchOverlay&&(identical(other.config, config) || other.config == config));
}


@override
int get hashCode => Object.hash(runtimeType,config);

@override
String toString() {
  return 'OverlayEvent.launchOverlay(config: $config)';
}


}

/// @nodoc
abstract mixin class $LaunchOverlayCopyWith<$Res> implements $OverlayEventCopyWith<$Res> {
  factory $LaunchOverlayCopyWith(LaunchOverlay value, $Res Function(LaunchOverlay) _then) = _$LaunchOverlayCopyWithImpl;
@useResult
$Res call({
 OverlayConfig? config
});


$OverlayConfigCopyWith<$Res>? get config;

}
/// @nodoc
class _$LaunchOverlayCopyWithImpl<$Res>
    implements $LaunchOverlayCopyWith<$Res> {
  _$LaunchOverlayCopyWithImpl(this._self, this._then);

  final LaunchOverlay _self;
  final $Res Function(LaunchOverlay) _then;

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? config = freezed,}) {
  return _then(LaunchOverlay(
config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as OverlayConfig?,
  ));
}

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverlayConfigCopyWith<$Res>? get config {
    if (_self.config == null) {
    return null;
  }

  return $OverlayConfigCopyWith<$Res>(_self.config!, (value) {
    return _then(_self.copyWith(config: value));
  });
}
}

/// @nodoc


class UpdateOverlay implements OverlayEvent {
  const UpdateOverlay({this.config});
  

 final  OverlayConfig? config;

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateOverlayCopyWith<UpdateOverlay> get copyWith => _$UpdateOverlayCopyWithImpl<UpdateOverlay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateOverlay&&(identical(other.config, config) || other.config == config));
}


@override
int get hashCode => Object.hash(runtimeType,config);

@override
String toString() {
  return 'OverlayEvent.updateOverlay(config: $config)';
}


}

/// @nodoc
abstract mixin class $UpdateOverlayCopyWith<$Res> implements $OverlayEventCopyWith<$Res> {
  factory $UpdateOverlayCopyWith(UpdateOverlay value, $Res Function(UpdateOverlay) _then) = _$UpdateOverlayCopyWithImpl;
@useResult
$Res call({
 OverlayConfig? config
});


$OverlayConfigCopyWith<$Res>? get config;

}
/// @nodoc
class _$UpdateOverlayCopyWithImpl<$Res>
    implements $UpdateOverlayCopyWith<$Res> {
  _$UpdateOverlayCopyWithImpl(this._self, this._then);

  final UpdateOverlay _self;
  final $Res Function(UpdateOverlay) _then;

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? config = freezed,}) {
  return _then(UpdateOverlay(
config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as OverlayConfig?,
  ));
}

/// Create a copy of OverlayEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverlayConfigCopyWith<$Res>? get config {
    if (_self.config == null) {
    return null;
  }

  return $OverlayConfigCopyWith<$Res>(_self.config!, (value) {
    return _then(_self.copyWith(config: value));
  });
}
}

/// @nodoc


class ShowOverlay implements OverlayEvent {
  const ShowOverlay();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowOverlay);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverlayEvent.showOverlay()';
}


}




/// @nodoc


class SwitchFeatureOverlay implements OverlayEvent {
  const SwitchFeatureOverlay();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwitchFeatureOverlay);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverlayEvent.switchFeatureOverlay()';
}


}




/// @nodoc


class CheckBehaviourOverlay implements OverlayEvent {
  const CheckBehaviourOverlay();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckBehaviourOverlay);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverlayEvent.checkBehaviourOverlay()';
}


}




// dart format on
