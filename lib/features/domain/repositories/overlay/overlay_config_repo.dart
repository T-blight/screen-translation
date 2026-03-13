import 'package:tombozi/features/domain/entities/overlay_config.dart';

abstract class OverlayConfigRepo {
  Future<OverlayConfig> getInfoDevice();
  Future<bool> getScale(int scale);
}