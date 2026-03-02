import 'package:flutter/cupertino.dart' hide OverlayState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import '../../../features/domain/entities/overlay_config.dart';
import 'overlay_event.dart';
import 'overlay_state.dart';

class OverlayBloc extends Bloc<OverlayEvent, OverlayState> {
  OverlayBloc(OverlayConfig overlayConfig)
      : super(OverlayState(overlayConfig: overlayConfig)) {
    on<LaunchOverlay>((event, emit) {
      switch (state.style) {
        case OverlayStyle.standard:
          final newConfig = state.overlayConfig?.copyWith(
            scaleFactor: 0.12,
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
      if(state.visibility == OverlayVisibility.hidden){
        bool? isGranted = await FlutterOverlayWindow.isPermissionGranted();

        if (isGranted != true) {
          await FlutterOverlayWindow.requestPermission();
          return;
        }
      }
      if(await FlutterOverlayWindow.isActive()){
        await FlutterOverlayWindow.closeOverlay();
      }
      if(state.visibility == OverlayVisibility.visible && state.formType == OverlayFormType.circle){
        final kek = await FlutterOverlayWindow.getOverlayPosition();
        debugPrint(kek.toString());
      }
      else{
        final size = state.overlayConfig?.calculatedCircleSize ?? 180;
        final position = await FlutterOverlayWindow.getOverlayPosition();
        debugPrint(overlayConfig.toString());
        final starOverlay = state.overlayPosition ;
        debugPrint(size.toString()+"______________"+ starOverlay.toString());
        await FlutterOverlayWindow.showOverlay(
          height: size,
          width: size,
          alignment: OverlayAlignment.centerRight,
          enableDrag: true,
          positionGravity: PositionGravity.auto,
          startPosition: position
        );
        emit(state.copyWith(
          formType: OverlayFormType.circle,
          visibility: OverlayVisibility.visible
        ));
      }
    });
    on<SwitchFeatureOverlay>((event, emit) async {
      final position = await FlutterOverlayWindow.getOverlayPosition();
      await FlutterOverlayWindow.closeOverlay();
      await FlutterOverlayWindow.showOverlay(
        enableDrag: false,
        startPosition: position,
        positionGravity: PositionGravity.auto
      );
      debugPrint("++++++______________"+ position.toString());

      emit(state.copyWith(
        formType: OverlayFormType.feature,
        overlayPosition: position,
      ));
    });
  }
}