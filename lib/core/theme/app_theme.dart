import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightGray = Color(0xFFF5F5F5);
  static const Color darkBackground = Color(0xFF121212);
  static const Color accentColor = Colors.orange;

  // =========================
  // LIGHT THEME
  // =========================
  static ThemeData lightTheme = FlexThemeData.light(
    useMaterial3: true,

    colors: const FlexSchemeColor(
      primary: Colors.black,
      primaryContainer: Color(0xFF222222),
      secondary: accentColor,
      secondaryContainer: Color(0xFFFFE0B2),
    ),

    scaffoldBackground: lightGray,
    appBarStyle: FlexAppBarStyle.background,
    tabBarStyle: FlexTabBarStyle.forAppBar,

    subThemesData: const FlexSubThemesData(
      bottomAppBarSchemeColor: SchemeColor.primary,
      cardRadius: 12,
      inputDecoratorRadius: 10,
    ),
  ).copyWith(
    dividerTheme: const DividerThemeData(
      space: 20,
      thickness: 0.5,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black54,
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(fontSize: 14),
      titleSmall: TextStyle(fontSize: 12),
      titleMedium: TextStyle(fontSize: 13),
      titleLarge: TextStyle(fontSize: 20),
      labelSmall: TextStyle(fontSize: 8),
      labelMedium: TextStyle(fontSize: 10),
      labelLarge: TextStyle(fontSize: 12),
    ),
  );

  // =========================
  // DARK THEME
  // =========================
  static ThemeData darkTheme = FlexThemeData.dark(
    useMaterial3: true,

    colors: const FlexSchemeColor(
      primary: Colors.white,
      primaryContainer: Color(0xFF1E1E1E),
      secondary: accentColor,
      secondaryContainer: Color(0xFF4A2E00),
    ),

    scaffoldBackground: darkBackground,
    appBarStyle: FlexAppBarStyle.background,
    tabBarStyle: FlexTabBarStyle.forAppBar,

    subThemesData: const FlexSubThemesData(
      bottomAppBarSchemeColor: SchemeColor.primary,
      cardRadius: 12,
      inputDecoratorRadius: 10,
    ),
  ).copyWith(
    dividerTheme: const DividerThemeData(
      space: 20,
      thickness: 0.5,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white70,
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(fontSize: 14),
      titleSmall: TextStyle(fontSize: 12),
      titleMedium: TextStyle(fontSize: 13),
      titleLarge: TextStyle(fontSize: 20),
      labelSmall: TextStyle(fontSize: 8),
      labelMedium: TextStyle(fontSize: 10),
      labelLarge: TextStyle(fontSize: 12),
    ),
  );
}