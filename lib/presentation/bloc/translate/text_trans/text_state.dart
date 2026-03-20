import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_state.freezed.dart';

@freezed
class TextState with _$TextState {
  const factory TextState.start() = Start;

  const factory TextState.loading() = Loading;

  const factory TextState.error (String message) = Error;

  const factory TextState.success (String message) = Success;
}