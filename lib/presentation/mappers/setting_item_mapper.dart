import 'package:flutter/cupertino.dart';
import 'package:tombozi/extensions/context_ext.dart';

import '../../features/domain/entities/setting_item.dart';
import '../../features/domain/enums/setting_feature.dart';

class SettingItemMapper {
  static List<SettingItem> mapFeatures(
    List<SettingFeature> features,
    BuildContext context,
    ) {
      return features
          .map((feature) => _mapFeatureToItem(feature, context))
          .toList();
  }

  static List<SettingItem> map(BuildContext context) {
    return SettingFeature.values.map((feature) {
      return _mapFeatureToItem(feature, context);
    }).toList();
  }

  static SettingItem _mapFeatureToItem(
      SettingFeature feature,
      BuildContext context,
      ) {
    switch (feature) {
      case SettingFeature.areaOption:
        return SettingItem(
          title: context.loc.styleTitleAreaOption,
          description: context.loc.styleSubAreaOption,
          feature: feature,
        );

      case SettingFeature.changeTheme:
        return SettingItem(
          title: context.loc.assistiveBubbleActionSubSetting,
          description: context.loc.assistiveBubbleActionSubSetting,
          feature: feature,
        );
      case SettingFeature.customizeStyle:
        // TODO: Handle this case.
        throw UnimplementedError();
      case SettingFeature.assistiveBubble:
        // TODO: Handle this case.
        throw UnimplementedError();
      case SettingFeature.assistiveBubbleAction:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }
}
