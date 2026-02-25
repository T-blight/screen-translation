import '../../features/domain/services/overlay_service.dart';

class OverlayViewModel {
  final OverlayService overlayService;

  OverlayViewModel(this.overlayService);

  Future<void> showOverlay() async {
    await overlayService.showOverlay();
  }
}

