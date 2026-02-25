import '../enums/setting_feature.dart';

class SettingSection {
  final String title;
  final List<SettingFeature> features;

  SettingSection({
    required this.title,
    required this.features,
  });
}
