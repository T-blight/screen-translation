import '../entities/overlay_config.dart';

abstract class OverlayService {
  Future<void> updateConfig(OverlayConfig config);
  Future<void> showOverlay();
  Future<void> showListFeatureOverlay();

  void initConfig(OverlayConfig config) {}
  OverlayConfig? get config;
  Future<void> closeOverlay() async {}
  Future<void> hiddenOverlay() async {}

  Future<void> resetOverlay() async {}
}