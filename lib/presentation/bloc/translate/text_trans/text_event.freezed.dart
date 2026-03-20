// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TextEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TextEvent()';
}


}

/// @nodoc
class $TextEventCopyWith<$Res>  {
$TextEventCopyWith(TextEvent _, $Res Function(TextEvent) __);
}


/// Adds pattern-matching-related methods to [TextEvent].
extension TextEventPatterns on TextEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TextChanged value)?  textChanged,TResult Function( Submitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TextChanged() when textChanged != null:
return textChanged(_that);case Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TextChanged value)  textChanged,required TResult Function( Submitted value)  submitted,}){
final _that = this;
switch (_that) {
case TextChanged():
return textChanged(_that);case Submitted():
return submitted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TextChanged value)?  textChanged,TResult? Function( Submitted value)?  submitted,}){
final _that = this;
switch (_that) {
case TextChanged() when textChanged != null:
return textChanged(_that);case Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text)?  textChanged,TResult Function()?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TextChanged() when textChanged != null:
return textChanged(_that.text);case Submitted() when submitted != null:
return submitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text)  textChanged,required TResult Function()  submitted,}) {final _that = this;
switch (_that) {
case TextChanged():
return textChanged(_that.text);case Submitted():
return submitted();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text)?  textChanged,TResult? Function()?  submitted,}) {final _that = this;
switch (_that) {
case TextChanged() when textChanged != null:
return textChanged(_that.text);case Submitted() when submitted != null:
return submitted();case _:
  return null;

}
}

}

/// @nodoc


class TextChanged implements TextEvent {
  const TextChanged(this.text);
  

 final  String text;

/// Create a copy of TextEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextChangedCopyWith<TextChanged> get copyWith => _$TextChangedCopyWithImpl<TextChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextChanged&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'TextEvent.textChanged(text: $text)';
}


}

/// @nodoc
abstract mixin class $TextChangedCopyWith<$Res> implements $TextEventCopyWith<$Res> {
  factory $TextChangedCopyWith(TextChanged value, $Res Function(TextChanged) _then) = _$TextChangedCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$TextChangedCopyWithImpl<$Res>
    implements $TextChangedCopyWith<$Res> {
  _$TextChangedCopyWithImpl(this._self, this._then);

  final TextChanged _self;
  final $Res Function(TextChanged) _then;

/// Create a copy of TextEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(TextChanged(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Submitted implements TextEvent {
  const Submitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Submitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TextEvent.submitted()';
}


}




// dart format on
