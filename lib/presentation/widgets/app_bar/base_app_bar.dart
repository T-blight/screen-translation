import 'package:flutter/material.dart';
import 'package:tombozi/extensions/context_ext.dart';
import 'package:tombozi/presentation/widgets/app_bar/handle_app_bar.dart';

class BaseAppBar extends AppBar {
  BaseAppBar({
    Key? key,
    required BuildContext context,
    required int pageIndex,
  }) : super(
    key: key,
    title: Text(_getTitle(context, pageIndex)),
    actions: _getActions(context, pageIndex),
  );


  static String _getTitle(BuildContext context, int pageIndex) {
    final titles = <int, String>{
      0: context.loc.homePagePame,
    };

    return titles[pageIndex] ?? context.loc.homePagePame;
  }
  static  List<Widget> _getActions(BuildContext context, int pageIndex){
    HandleAppBar handleAppBar;
    // print(pageIndex.toString());
    switch(pageIndex){
      case 0:
        handleAppBar = new HandleHomePage();
        break;
      default:
        handleAppBar = new HandleHomePage();
        break;
    }

    return handleAppBar.showIcons(context);
  }


}
