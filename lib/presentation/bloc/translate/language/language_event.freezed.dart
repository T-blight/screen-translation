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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SwapLanguage value)?  swapLanguages,TResult Function( ChangeLanguage value)?  changeLanguageSource,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SwapLanguage() when swapLanguages != null:
return swapLanguages(_that);case ChangeLanguage() when changeLanguageSource != null:
return changeLanguageSource(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SwapLanguage value)  swapLanguages,required TResult Function( ChangeLanguage value)  changeLanguageSource,}){
final _that = this;
switch (_that) {
case SwapLanguage():
return swapLanguages(_that);case ChangeLanguage():
return changeLanguageSource(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SwapLanguage value)?  swapLanguages,TResult? Function( ChangeLanguage value)?  changeLanguageSource,}){
final _that = this;
switch (_that) {
case SwapLanguage() when swapLanguages != null:
return swapLanguages(_that);case ChangeLanguage() when changeLanguageSource != null:
return changeLanguageSource(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  swapLanguages,TResult Function( TranslateLanguage lang)?  changeLanguageSource,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SwapLanguage() when swapLanguages != null:
return swapLanguages();case ChangeLanguage() when changeLanguageSource != null:
return changeLanguageSource(_that.lang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  swapLanguages,required TResult Function( TranslateLanguage lang)  changeLanguageSource,}) {final _that = this;
switch (_that) {
case SwapLanguage():
return swapLanguages();case ChangeLanguage():
return changeLanguageSource(_that.lang);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  swapLanguages,TResult? Function( TranslateLanguage lang)?  changeLanguageSource,}) {final _that = this;
switch (_that) {
case SwapLanguage() when swapLanguages != null:
return swapLanguages();case ChangeLanguage() when changeLanguageSource != null:
return changeLanguageSource(_that.lang);case _:
  return null;

}
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
  const ChangeLanguage(this.lang);
  

 final  TranslateLanguage lang;

/// Create a copy of LanguageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeLanguageCopyWith<ChangeLanguage> get copyWith => _$ChangeLanguageCopyWithImpl<ChangeLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeLanguage&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,lang);

@override
String toString() {
  return 'LanguageEvent.changeLanguageSource(lang: $lang)';
}


}

/// @nodoc
abstract mixin class $ChangeLanguageCopyWith<$Res> implements $LanguageEventCopyWith<$Res> {
  factory $ChangeLanguageCopyWith(ChangeLanguage value, $Res Function(ChangeLanguage) _then) = _$ChangeLanguageCopyWithImpl;
@useResult
$Res call({
 TranslateLanguage lang
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
@pragma('vm:prefer-inline') $Res call({Object? lang = null,}) {
  return _then(ChangeLanguage(
null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as TranslateLanguage,
  ));
}


}

// dart format on
