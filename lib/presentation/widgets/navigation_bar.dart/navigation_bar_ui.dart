import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../contracts/navigation_bar_controller_contract.dart';

class NavigationBarUi extends StatelessWidget {
  final NavigationBarControllerContract nav;

  NavigationBarUi({Key? key, required this.nav}) : super(key: key);

  List<NavigationDestination> buildDestinations(int currentIndex) {


    //list icon nav
    final List<Map<String, dynamic>> items = [
      {
        "label": "Home",
        "icon": Icons.home_outlined,
        "activeIcon": Icons.home,
      },
      {
        "label": "Profile",
        "icon": Icons.person_outline,
        "activeIcon": Icons.person,
      },
    ];

    return items.asMap().entries.map((entry) {
      final index = entry.key;
      final data = entry.value;

      return NavigationDestination(
        icon: Icon(
          index == currentIndex ? data["activeIcon"] as IconData : data["icon"] as IconData,
        ),
        label: data["label"] as String,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {

    return NavigationBar(
      selectedIndex: nav.currentIndex,
      onDestinationSelected: (index) => nav.setCurrentIndex(index),
      indicatorColor: Colors.amber,
      destinations: buildDestinations(nav.currentIndex)
    );
  }
}