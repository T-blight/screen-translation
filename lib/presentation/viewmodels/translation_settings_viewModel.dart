import 'package:flutter/material.dart';


class TranslationSettingsViewModel extends ChangeNotifier {
  String _sourceLanguage = 'en';
  String _targetLanguage = 'vi';
  String _translationEngine = 'Google';
  bool _isAutoTranslate = false;
  String _mode = 'text';
  String _backgroundTranslation = 'transparent';

  // Getters
  String get sourceLanguage => _sourceLanguage;
  String get targetLanguage => _targetLanguage;
  String get translationEngine => _translationEngine;
  bool get isAutoTranslate => _isAutoTranslate;
  String get mode => _mode;
  String get backgroundTranslation => _backgroundTranslation;

  // Setters
  void setSourceLanguage(String lang) {
    _sourceLanguage = lang;
    notifyListeners();
  }

  void setTargetLanguage(String lang) {
    _targetLanguage = lang;
    notifyListeners();
  }

  void setTranslationEngine(String engine) {
    _translationEngine = engine;
    notifyListeners();
  }

  void toggleAutoTranslate() {
    _isAutoTranslate = !_isAutoTranslate;
    notifyListeners();
  }

  void setMode(String newMode) {
    _mode = newMode;
    notifyListeners();
  }
  void setBackgroundTranslation(String type){
    _backgroundTranslation = type;
    notifyListeners();
  }
}
