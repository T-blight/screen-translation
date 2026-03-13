import 'package:flutter/cupertino.dart' hide OverlayState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import '../../../features/domain/entities/overlay_config.dart';
import 'overlay_event.dart';
import 'overlay_state.dart';

class OverlayBloc extends Bloc<OverlayEvent, OverlayState> {
  OverlayBloc(OverlayConfig ?overlayConfig)
      : super(OverlayState(overlayConfig: overlayConfig)) {
    on<LaunchOverlay>((event, emit) {
      switch (state.style) {
        case OverlayStyle.standard:
          final newConfig = state.overlayConfig?.copyWith(
            scaleFactor: 0.14,
          );
          emit(state.copyWith(overlayConfig: newConfig));
          break;

        case OverlayStyle.customer:
          emit(state.copyWith(
            overlayConfig: event.config,
          ));
          break;
      }
      add(ShowOverlay());
    });
    on<ShowOverlay>((event, emit) async {
      if (!await FlutterOverlayWindow.isPermissionGranted()) {
        await FlutterOverlayWindow.requestPermission();
      }

      if (await FlutterOverlayWindow.isActive()) {
        await FlutterOverlayWindow.closeOverlay();
      }

      final size = state.overlayConfig?.calculatedCircleSize ?? 180;
      final startPosition = state.overlayPosition;
      await FlutterOverlayWindow.showOverlay(
        height: size,
        width: size,
        enableDrag: true,
        positionGravity: PositionGravity.auto,
        alignment: OverlayAlignment.centerRight,
        startPosition:  OverlayPosition(0,0)
      );
      if (await FlutterOverlayWindow.isActive()) {
        debugPrint(state.overlayConfig!.widthSize.toString());
        emit(state.copyWith(
          formType: OverlayFormType.circle,
          visibility: OverlayVisibility.visible,

        ));
        debugPrint(state.overlayConfig!.widthSize.toString());

      }

    });
    on<SwitchFeatureOverlay>((event, emit) async {
      final position = await FlutterOverlayWindow.getOverlayPosition();
      if (await FlutterOverlayWindow.isActive()) {
        await FlutterOverlayWindow.closeOverlay();
      }
      await FlutterOverlayWindow.showOverlay(
        enableDrag: false,
        startPosition: OverlayPosition(0, 0),
        flag: OverlayFlag.focusPointer
      );
      if (await FlutterOverlayWindow.isActive()) {
        emit(state.copyWith(
          formType: OverlayFormType.feature,
          overlayPosition: position,
        ));
      }
    });
    on<CheckBehaviourOverlay>((event,emit) async {
      final pos = await FlutterOverlayWindow.getOverlayPosition();

      final limitWidth = (overlayConfig!.heightSize-overlayConfig.calculatedCircleSize)*0.5/ 2;
      final y = pos.y.clamp(-limitWidth, limitWidth) ;

      await FlutterOverlayWindow.moveOverlay(OverlayPosition(pos.x,y));
      debugPrint(pos.toString());
    });
  }
}