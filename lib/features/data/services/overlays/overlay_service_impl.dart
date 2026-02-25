import 'package:flutter/cupertino.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import '../../../domain/entities/overlay_config.dart';
import '../../../domain/services/overlay_service.dart';

class OverlayServiceImpl implements OverlayService {
  OverlayConfig? _config;
  @override
  Future<void> showOverlay() async {
    final size = _config?.calculatedCircleSize;

    await FlutterOverlayWindow.showOverlay(
      height: size?? 150,
      width: size?? 150,
      alignment: OverlayAlignment.centerRight,
      enableDrag: true,
      positionGravity: PositionGravity.auto,
    );
  }

  @override
  Future<void> showListFeatureOverlay() async {
    await FlutterOverlayWindow.showOverlay(
      height: 500,
      width: _config?.calculatedRectangleSize ?? 900,
      enableDrag: false,
      positionGravity: PositionGravity.auto,
      flag: OverlayFlag.focusPointer,
    );
  }

  @override
  Future<void> updateConfig(OverlayConfig config) async {
    _config = config;
  }

  @override
  void initConfig(OverlayConfig config) {
    _config = config;
  }

  @override
  Future<void> closeOverlay() {
    // TODO: implement closeOverlay
    throw UnimplementedError();
  }

  @override
  Future<void> hiddenOverlay() {
    // TODO: implement hiddenOverlay
    throw UnimplementedError();
  }
}