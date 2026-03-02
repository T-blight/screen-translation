import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features/domain/entities/overlay_config.dart';
part 'overlay_state.freezed.dart';
enum OverlayVisibility { visible, hidden, closed,updating }
enum OverlayFormType { feature,action, circle }
enum OverlayStyle{standard , customer}
enum OverlayUnion{loading,error,success}
@freezed
sealed class OverlayState with _$OverlayState {

  const factory OverlayState({
    @Default(OverlayVisibility.closed)
    OverlayVisibility visibility,

    @Default(OverlayFormType.circle)
    OverlayFormType formType,

    @Default(OverlayStyle.standard)
    OverlayStyle style,

    @Default(OverlayUnion.loading)
    OverlayUnion overlayUnion,

    OverlayConfig? overlayConfig,

    OverlayPosition? overlayPosition,

  }) = _OverlayState;
}