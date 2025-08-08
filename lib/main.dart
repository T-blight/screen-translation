import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
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
        dividerTheme: DividerThemeData(
          color: lightGray,
          space: 20
        ),
        textTheme: GoogleFonts.robotoCondensedTextTheme().copyWith(
          bodyLarge: const TextStyle(color: Colors.black87),
          bodyMedium: const TextStyle(
            color: Colors.black87,
            fontSize: 18,
          ),
          titleMedium: TextStyle( // Dùng làm subtitle
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.grey[700],
          ),
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
        cardColor: Colors.white.withOpacity(0.16),
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
