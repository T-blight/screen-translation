import 'package:flutter/material.dart';

class FrameGroup extends StatelessWidget {
  final double weightWidget;
  final Widget displayWidget;
  final Color color;
  final double elevation;
  final bool asButton;
  final VoidCallback? onPressed;
  final double vertical;
  final double paddingButton;
  final double paddingCard;
  const FrameGroup({
    Key? key,
    required this.displayWidget,
    this.weightWidget = 0.9,
    this.color = Colors.white,
    this.elevation = 0,
    this.asButton = false,
    this.onPressed,
    this.vertical = 7,
    this.paddingButton = 13,
    this.paddingCard = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(12);

    final Widget content = asButton
        ? Material(
      color: color,
      elevation: elevation,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onPressed,
        borderRadius: borderRadius,
        child: Padding(
          padding: EdgeInsets.all(paddingButton),
          child: displayWidget,
        ),
      ),
    )
        : Card(
      color: color,
      elevation: elevation,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      child: Padding(
        padding: EdgeInsets.all(paddingCard),
        child: displayWidget,
      ),
    );

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: vertical),
        child: FractionallySizedBox(
          widthFactor: weightWidget,
          child: content,
        ),
      ),
    );
  }
}
