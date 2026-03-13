import 'package:flutter_overlay_window/flutter_overlay_window.dart';

enum OverlayEdge{right,left,top,bottom}
extension OverlayPositionMapper on OverlayPosition {
  operator *(double multiplier) {
    return OverlayPosition(
      x * multiplier,
      y * multiplier,
    );
  }

  Map<OverlayEdge, double> toEdgeMap({
    required OverlayPosition pos,
    required double width,
    required double height
  }) {

    return {
      OverlayEdge.left: width-x,
      OverlayEdge.right: x,
      OverlayEdge.top: y,
      OverlayEdge.bottom:  - y,
    };
  }

}

