import 'package:flutter/material.dart';

final class ThemeState{
  const ThemeState({this.themeMode = ThemeMode.system});

  factory ThemeState.fromMap(Map<String, dynamic> map) {
    final index = map['themeMode'] as int?;
    return ThemeState(
      themeMode: index != null
          ? ThemeMode.values[index]
          : ThemeMode.system,
    );
  }

  final ThemeMode themeMode;

  Map<String, dynamic> toMap() {
    return {'themeMode': themeMode.index};
  }

  List<Object> get props => [themeMode];
}
