import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features/domain/entities/overlay_config.dart';

part 'overlay_event.freezed.dart';
@freezed
class OverlayEvent with _$OverlayEvent {
  const factory OverlayEvent.initConfig(OverlayConfig config) = _InitConfig;
  const factory OverlayEvent.updateConfig(OverlayConfig config) = _UpdateConfig;
  const factory OverlayEvent.showOverlay() = _ShowOverlay;
  const factory OverlayEvent.showListFeatureOverlay() = _ShowListFeatureOverlay;
}