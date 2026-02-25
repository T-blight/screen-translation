import 'package:flutter_overlay_window/flutter_overlay_window.dart';

import '../../../domain/services/overlay_service.dart';


class OverlayServiceImpl implements OverlayService {
  @override
  Future<void> showOverlay(double width, double dpr) async {
    final overlaySize = (width * 0.12 * dpr).toInt();

    await FlutterOverlayWindow.showOverlay(
      height: overlaySize,
      width: overlaySize,
      alignment: OverlayAlignment.centerRight,
      enableDrag: true,
      positionGravity: PositionGravity.auto,
    );
  }

  @override
  Future<void> showListFeatureOverlay(double width, double dpr) async {
    final overlaySize = (width * 0.12 * dpr).toInt();
    await FlutterOverlayWindow.showOverlay(
      height: 500,
      width: 900,
      enableDrag: false,
      positionGravity: PositionGravity.auto,
      flag: OverlayFlag.focusPointer
    );
  }
}

class _OverlayConfig {
  final double? screenWidth;
  final double? devicePixelRatio;

  const _OverlayConfig({
    this.screenWidth,
    this.devicePixelRatio,
  });
}