// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LanguageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LanguageState()';
}


}

/// @nodoc
class $LanguageStateCopyWith<$Res>  {
$LanguageStateCopyWith(LanguageState _, $Res Function(LanguageState) __);
}


/// Adds pattern-matching-related methods to [LanguageState].
extension LanguageStatePatterns on LanguageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Source value)?  source,TResult Function( Target value)?  target,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Source() when source != null:
return source(_that);case Target() when target != null:
return target(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Source value)  source,required TResult Function( Target value)  target,}){
final _that = this;
switch (_that) {
case Source():
return source(_that);case Target():
return target(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Source value)?  source,TResult? Function( Target value)?  target,}){
final _that = this;
switch (_that) {
case Source() when source != null:
return source(_that);case Target() when target != null:
return target(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  source,TResult Function()?  target,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Source() when source != null:
return source();case Target() when target != null:
return target();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  source,required TResult Function()  target,}) {final _that = this;
switch (_that) {
case Source():
return source();case Target():
return target();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  source,TResult? Function()?  target,}) {final _that = this;
switch (_that) {
case Source() when source != null:
return source();case Target() when target != null:
return target();case _:
  return null;

}
}

}

/// @nodoc


class Source implements LanguageState {
  const Source();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Source);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LanguageState.source()';
}


}




/// @nodoc


class Target implements LanguageState {
  const Target();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Target);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LanguageState.target()';
}


}




// dart format on
