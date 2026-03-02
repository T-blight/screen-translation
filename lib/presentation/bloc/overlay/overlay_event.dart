import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features/domain/entities/overlay_config.dart';

part 'overlay_event.freezed.dart';
@freezed
class OverlayEvent with _$OverlayEvent {
  const factory OverlayEvent.launchOverlay({OverlayConfig? config}) = LaunchOverlay;
  const factory OverlayEvent.updateOverlay({OverlayConfig? config}) = UpdateOverlay;
  const factory OverlayEvent.showOverlay() = ShowOverlay;
  const factory OverlayEvent.switchFeatureOverlay() = SwitchFeatureOverlay;

}