import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingWidget extends StatelessWidget {
  final int rows;
  final double width;
  final double height;

  const LoadingWidget({
    super.key,
    this.rows = 3,
    this.width = 200,
    this.height = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.red.shade900,
      highlightColor: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(rows, (index) {
          return Container(
            width: width,
            height: height,
            color: Colors.white,
          ); // nền shimmer
        }),
      ),
    );
  }
}
