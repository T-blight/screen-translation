import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_state.freezed.dart';

@freezed
class LanguageState with _$LanguageState{
  const factory LanguageState.source() = Source;
  const factory LanguageState.target() = Target;
}