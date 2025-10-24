import 'package:flutter/material.dart';
import 'package:tombozi/presentation/widgets/frame/frame_group.dart';

import '../../widgets/app_bar/base_app_bar.dart';
import '../../widgets/navigation_bar.dart/navigation_bar_ui.dart';
import '../home/home_view.dart';

class SettingView extends StatelessWidget{
  final NavigationBarIndex navBarIndex = NavigationBarIndex();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        context: context,
        pageIndex: 0,
      ),
      body: _SettingView(),
      bottomNavigationBar: NavigationBarUi(nav: navBarIndex),
    );
  }
}

class _SettingView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FrameGroup(displayWidget: _UserInterfaceWiget())
      ],
    );
  }
}

class _UserInterfaceWiget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                'assets/images/sample.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0), // cách đều các cạnh trong vùng Expanded
            child: AspectRatio(
              aspectRatio: 1, // đảm bảo hình vuông
              child: Image.asset(
                'assets/images/sample.png',
                fit: BoxFit.cover, // lấp đầy ô vuông
              ),
            ),
          ),
        ),
      ]
    );
  }
}


