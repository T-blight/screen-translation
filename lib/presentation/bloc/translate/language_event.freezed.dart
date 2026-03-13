// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LanguageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LanguageEvent()';
}


}

/// @nodoc
class $LanguageEventCopyWith<$Res>  {
$LanguageEventCopyWith(LanguageEvent _, $Res Function(LanguageEvent) __);
}


/// Adds pattern-matching-related methods to [LanguageEvent].
extension LanguageEventPatterns on LanguageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadLanguage value)?  loadLanguage,TResult Function( SwapLanguage value)?  swapLanguages,TResult Function( ChangeLanguage value)?  changeLanguage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadLanguage() when loadLanguage != null:
return loadLanguage(_that);case SwapLanguage() when swapLanguages != null:
return swapLanguages(_that);case ChangeLanguage() when changeLanguage != null:
return changeLanguage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadLanguage value)  loadLanguage,required TResult Function( SwapLanguage value)  swapLanguages,required TResult Function( ChangeLanguage value)  changeLanguage,}){
final _that = this;
switch (_that) {
case LoadLanguage():
return loadLanguage(_that);case SwapLanguage():
return swapLanguages(_that);case ChangeLanguage():
return changeLanguage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadLanguage value)?  loadLanguage,TResult? Function( SwapLanguage value)?  swapLanguages,TResult? Function( ChangeLanguage value)?  changeLanguage,}){
final _that = this;
switch (_that) {
case LoadLanguage() when loadLanguage != null:
return loadLanguage(_that);case SwapLanguage() when swapLanguages != null:
return swapLanguages(_that);case ChangeLanguage() when changeLanguage != null:
return changeLanguage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadLanguage,TResult Function()?  swapLanguages,TResult Function( String id)?  changeLanguage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadLanguage() when loadLanguage != null:
return loadLanguage();case SwapLanguage() when swapLanguages != null:
return swapLanguages();case ChangeLanguage() when changeLanguage != null:
return changeLanguage(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadLanguage,required TResult Function()  swapLanguages,required TResult Function( String id)  changeLanguage,}) {final _that = this;
switch (_that) {
case LoadLanguage():
return loadLanguage();case SwapLanguage():
return swapLanguages();case ChangeLanguage():
return changeLanguage(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadLanguage,TResult? Function()?  swapLanguages,TResult? Function( String id)?  changeLanguage,}) {final _that = this;
switch (_that) {
case LoadLanguage() when loadLanguage != null:
return loadLanguage();case SwapLanguage() when swapLanguages != null:
return swapLanguages();case ChangeLanguage() when changeLanguage != null:
return changeLanguage(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class LoadLanguage implements LanguageEvent {
  const LoadLanguage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadLanguage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LanguageEvent.loadLanguage()';
}


}




/// @nodoc


class SwapLanguage implements LanguageEvent {
  const SwapLanguage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwapLanguage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LanguageEvent.swapLanguages()';
}


}




/// @nodoc


class ChangeLanguage implements LanguageEvent {
  const ChangeLanguage(this.id);
  

 final  String id;

/// Create a copy of LanguageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeLanguageCopyWith<ChangeLanguage> get copyWith => _$ChangeLanguageCopyWithImpl<ChangeLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeLanguage&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'LanguageEvent.changeLanguage(id: $id)';
}


}

/// @nodoc
abstract mixin class $ChangeLanguageCopyWith<$Res> implements $LanguageEventCopyWith<$Res> {
  factory $ChangeLanguageCopyWith(ChangeLanguage value, $Res Function(ChangeLanguage) _then) = _$ChangeLanguageCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$ChangeLanguageCopyWithImpl<$Res>
    implements $ChangeLanguageCopyWith<$Res> {
  _$ChangeLanguageCopyWithImpl(this._self, this._then);

  final ChangeLanguage _self;
  final $Res Function(ChangeLanguage) _then;

/// Create a copy of LanguageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(ChangeLanguage(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
