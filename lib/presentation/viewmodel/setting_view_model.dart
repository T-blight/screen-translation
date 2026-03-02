import 'package:flutter/material.dart';
import 'package:tombozi/features/domain/entities/setting_section.dart';

import '../../features/domain/entities/setting_item.dart';
import '../../features/domain/enums/setting_feature.dart';
import '../mappers/setting_item_mapper.dart';

class SettingViewModel {

  List<SettingItem> getItems(BuildContext context) {
    return SettingItemMapper.map(context);
  }

  // List<SettingSection> getSections(){
  //   return[
  //     SettingSection(
  //           title: '',
  //         features: []
  //     ),
  //   ];
  // }
  void onFeatureSelected(SettingFeature feature) {
    switch (feature) {
      case SettingFeature.customizeStyle:
        // TODO: Handle this case.
        throw UnimplementedError();
      case SettingFeature.areaOption:
        // TODO: Handle this case.
        throw UnimplementedError();
      case SettingFeature.assistiveBubble:
        // TODO: Handle this case.
        throw UnimplementedError();
      case SettingFeature.assistiveBubbleAction:
        // TODO: Handle this case.
        throw UnimplementedError();
      case SettingFeature.changeTheme:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }
}
