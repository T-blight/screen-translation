import 'package:flutter/material.dart';

class FrameGroup extends StatelessWidget {
  final double weightWidget;
  final Widget displayWidget;
  final Color color;
  final double elevation;
  final bool asButton;
  final VoidCallback? onPressed;
  final double vertical;
  const FrameGroup({
    Key? key,
    required this.displayWidget,
    this.weightWidget = 0.9,
    this.color = Colors.white,
    this.elevation = 0,
    this.asButton = false,
    this.onPressed,
    this.vertical = 7,
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
          padding: const EdgeInsets.all(10),
          child: displayWidget,
        ),
      ),
    )
        : Card(
      color: color,
      elevation: elevation,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: displayWidget,
      ),
    );

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: vertical), // 16 là khoảng cách trên dưới
        child: FractionallySizedBox(
          widthFactor: weightWidget,
          child: content,
        ),
      ),
    );
  }
}
