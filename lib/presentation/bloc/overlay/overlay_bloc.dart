import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../features/domain/entities/overlay_config.dart';
import '../../../features/domain/services/overlay_service.dart';
import 'overlay_event.dart';
import 'overlay_state.dart';

class OverlayBloc extends Bloc<OverlayEvent, OverlayState> {
  final OverlayService overlayService;

  OverlayBloc(this.overlayService)
      : super(const OverlayState.state()) {
    on<OverlayEvent>((event, emit) async {
      await event.when(
          initConfig: (OverlayConfig config) {  },
          updateConfig: (OverlayConfig config) {  },
          showOverlay: () {  },
          showListFeatureOverlay: () {  }

      );
    });
  }
}