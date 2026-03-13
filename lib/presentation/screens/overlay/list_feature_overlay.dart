
import 'package:flutter/material.dart';

enum ListFeatureTranslate {
  translate,
  camera,
  localTranslation,
  autoTranslate,
  autoLocalTranslate,

}

class _Feature {
  final IconData icon;
  final Function(BuildContext) onClick;
  final Color color;
  _Feature({
    required this.icon,
    required this.onClick,
    required this.color,
  });
}


final Map<ListFeatureTranslate, _Feature> itemInOverlay = {

  ListFeatureTranslate.translate: _Feature(
    icon: Icons.translate,
    color: Colors.blue,
    onClick: (context) {
      debugPrint("translate");
    },
  ),

  ListFeatureTranslate.camera: _Feature(
    icon: Icons.camera_alt,
    color: Colors.green,
    onClick: (context) {
      debugPrint("camera");
    },
  ),

  ListFeatureTranslate.localTranslation: _Feature(
    icon: Icons.photo_size_select_small,
    color: Colors.orange,
    onClick: (context) {
      debugPrint("local translation");
    },
  ),

  ListFeatureTranslate.autoTranslate: _Feature(
    icon: Icons.sync,
    color: Colors.purple,
    onClick: (context) {
      debugPrint("auto translate");
    },
  ),

  ListFeatureTranslate.autoLocalTranslate: _Feature(
    icon: Icons.auto_fix_high,
    color: Colors.red,
    onClick: (context) {
      debugPrint("auto local translate");
    },
  ),
};
