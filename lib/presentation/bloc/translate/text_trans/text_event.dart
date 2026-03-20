import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_event.freezed.dart';

@freezed
class TextEvent with _$TextEvent {
  const factory TextEvent.textChanged(String text) = TextChanged;
  const factory TextEvent.submitted() = Submitted;

}
