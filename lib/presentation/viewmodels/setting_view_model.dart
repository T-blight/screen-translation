import '../../features/domain/enums/setting_feature.dart';

class SettingViewModel {

  void onFeatureSelected(SettingFeature feature) {
    switch (feature) {
      case SettingFeature.changeTheme:
        _changeLanguage();
        break;
      case SettingFeature.customizeStyle:
        _changePassword();
        break;
      case SettingFeature.assistiveBubble:
        _logout();
        break;
      case
    }
  }

  void _changeLanguage() { ... }
  void _changePassword() { ... }
  void _logout() { ... }
}
