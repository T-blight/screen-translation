import 'package:freezed_annotation/freezed_annotation.dart';

part 'overlay_state.freezed.dart';

@freezed
class OverlayState with _$OverlayState {
  const factory OverlayState.visible() = _Visible;

  const factory OverlayState.hidden() = _Hidden;

  const factory OverlayState.close() = _Close;
}