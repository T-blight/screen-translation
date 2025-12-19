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
    return Container(
      margin: const EdgeInsets.only(top:10),
      child: Column(
        children: [
          FrameGroup(displayWidget: _UserInterfaceWiget(),paddingCard: 10,),
        ],
      ),
    );
  }
}

class _UserInterfaceWiget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 4,
            child: Column(
              children: [
                Text("MY Name", style: TextStyle(
                  fontSize: 30,
                )),
                Text("member")
              ],
          ))
          // Expanded(
          //   flex: 1,
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: AspectRatio(
          //       aspectRatio: 1,
          //       child: Image.asset(
          //         'assets/default/images/userDefault.jpg',
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          // ),
        ]
      ),
    );
  }
}

class _UiSettingInterfaceWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}


