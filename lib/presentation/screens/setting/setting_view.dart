import 'package:flutter/material.dart';
import 'package:tombozi/presentation/widgets/frame/frame_group.dart';

import '../../../extensions/context_ext.dart';
import '../../../features/domain/entities/setting_item.dart';
import '../../../features/domain/enums/setting_feature.dart';
import '../../widgets/app_bar/base_app_bar.dart';
import '../../widgets/frame/frame_list_View.dart';
import '../../widgets/navigation_bar.dart/navigation_bar_ui.dart';
import '../home/home_view.dart';

class SettingView extends StatelessWidget{
  final NavigationBarIndex navBarIndex = NavigationBarIndex();

  SettingView({super.key});

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
          FrameGroup(
            displayWidget: _UserInterfaceWidget(),
          ),

          // FrameGroup(
          //   displayWidget: _CustomizeDisplayWidget(),
          // ),
          //
          // FrameGroup(
          //   displayWidget: _AssistiveBubbleWidget(),
          // )
        ],
      ),
    );
  }
}

class _UserInterfaceWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
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


          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("MY Name", style: TextStyle(
                    fontSize: 30,
                  )),
                  Text("member")
                ],
              ),
            )
          ),

          Expanded(
            flex: 1,
            child: const Icon(
              Icons.more_vert,
            )
          )
        ]
      ),
    );
  }
}


class _CustomizeDisplayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FrameListView(
          items: [
            SettingItem(
              title: context.loc.styleTitleSetting ?? "",
              description: context.loc.styleSubSetting,
              feature: (SettingFeature.areaOption),
            ),
            SettingItem(
              title: context.loc.styleTitleAreaOption,
              description: context.loc.styleSubAreaOption,
              feature: SettingFeature.areaOption,
            ),
          ],
        ),
      ],
    );
  }
}
//
// class _AssistiveBubbleWidget extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         FrameListView(
//           items: [
//             SettingItem(
//             title: context.loc.assistiveBubbleTitleSetting,
//             : context.loc.assistiveBubbleSubSetting,
//             onTap: () {},
//             ),
//             (
//             title: context.loc.assistiveBubbleActionTitleSetting,
//             des: context.loc.assistiveBubbleActionSubSetting,
//             onTap: () {},
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }


