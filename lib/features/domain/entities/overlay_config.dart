import 'package:freezed_annotation/freezed_annotation.dart';

part 'overlay_config.freezed.dart';

@freezed
sealed class OverlayConfig with _$OverlayConfig {
  const factory OverlayConfig({
    required double devicePixelRatio,
    @Default(0.14) double scaleFactor,
    required double widthSize,
    required double heightSize,
  }) = _OverlayConfig;

  const OverlayConfig._();

  int get calculatedCircleSize =>
      (widthSize * 0.14 * devicePixelRatio).toInt();

  int get calculatedRectangleSize =>
      (widthSize * 0.34 * devicePixelRatio).toInt();
}