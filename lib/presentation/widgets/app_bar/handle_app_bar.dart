import 'package:flutter/material.dart';
import 'package:tombozi/extensions/context_ext.dart';

abstract class HandleAppBar {
  List<Widget> showIcons(BuildContext context);
  void handleFunIcon(BuildContext context, int index);
}

//Home Page Logics
class HandleHomePage implements HandleAppBar {
  @override
  List<Widget> showIcons(BuildContext context) {
    return[
      ElevatedButton.icon(
        onPressed: () => {},
        label: Text(
          context.loc.vipPack,
          font: FontFamily
        ),
        icon: Icon(Icons.workspace_premium),
      )
    ];
  }
  @override
  void handleFunIcon(BuildContext context, int index) {
    switch(index){
      case 0:
        break;
    }
  }
}
