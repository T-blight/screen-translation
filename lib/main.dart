import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tombozi/l10n/app_localizations.dart';
import 'package:tombozi/presentation/screens/home/home_view.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final lightGray = Color(0xFFF0F0F0); // nền light mode

    return MaterialApp(
      title: 'Flutter Demo',
      supportedLocales: const [
        Locale('en'),
        Locale('vi'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate,
      ],
      locale: const Locale('vi'),
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: lightGray,
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: lightGray,
          foregroundColor: Colors.black,
          elevation: 0.3,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black87),
          bodyMedium: TextStyle(color: Colors.black87),
        ),
        iconTheme: const IconThemeData(color: Colors.black54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.orange,
          background: lightGray,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.white,
        cardColor: Colors.white.withOpacity(0.16), // trắng mờ hơn một chút
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 1,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
        ),
        iconTheme: const IconThemeData(color: Colors.white70),
        colorScheme: const ColorScheme.dark().copyWith(
          secondary: Colors.orange,
          background: Colors.black,
        ),
      ),
      themeMode: ThemeMode.system,
      home: const HomeView(),
    );
  }
}
