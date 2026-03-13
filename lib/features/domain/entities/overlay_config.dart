import 'package:freezed_annotation/freezed_annotation.dart';

part 'overlay_config.freezed.dart';

enum infomationOverlay {position, sizeWidget}

@freezed
sealed class OverlayConfig with _$OverlayConfig {
  const factory OverlayConfig({
    required double devicePixelRatio,
    @Default(0.14) double scaleFactor,
    @Default(0.4) double scaleRectangle,
    required double widthSize,
    required double heightSize,
  }) = _OverlayConfig;

  const OverlayConfig._();

  int get calculatedCircleSize =>
      (widthSize * 0.14 * devicePixelRatio).toInt();

  double get calculatedRectangleSize =>
      (widthSize * 0.34);

  double get getRectangleWidth => (widthSize *(1-scaleRectangle));

  double get rectangleY => (heightSize - calculatedRectangleSize);

}