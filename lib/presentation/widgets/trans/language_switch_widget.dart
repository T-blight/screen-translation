import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../frame/frame_group.dart';

final Color _clr = AppColors.translateButtonColor;

class LanguageSwitchWidget extends StatelessWidget{
  const LanguageSwitchWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: FrameGroup(
            displayWidget: Text("Tiếng Việt", textAlign: TextAlign.center),
            elevation: 1,
            asButton: true,
            onPressed: () {},
            color: _clr,
            weightWidget: 1,
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: Icon(Icons.swap_horiz_sharp, color: Colors.orange),
          ),
        ),
        Expanded(
            flex: 4,
            child: FrameGroup(
              displayWidget: Text("Tiếng Việt", textAlign: TextAlign.center),
              asButton: true,
              onPressed: () {},
              color: _clr,
              elevation: 1,
              weightWidget: 1,
            )
        ),
      ],
    );
  }
}