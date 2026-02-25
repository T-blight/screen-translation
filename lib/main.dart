// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:tombozi/l10n/app_localizations.dart';
// import 'package:tombozi/presentation/screens/home/home_view.dart';
// import 'package:tombozi/presentation/screens/setting/setting_view.dart';
// import 'package:tombozi/presentation/screens/translate/translate_view.dart';
//
// void main() {
//   runApp( MyApp());
// }
//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final lightGray = Color(0xFFF0F0F0); // nền light mode
//
//     return MaterialApp(
//       title: 'Flutter Demo',
//       supportedLocales: const [
//         Locale('en'),
//         Locale('vi'),
//       ],
//       localizationsDelegates: const [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//         AppLocalizations.delegate,
//       ],
//       locale: const Locale('vi'),
//       theme: ThemeData(
//         brightness: Brightness.light,
//         scaffoldBackgroundColor: lightGray,
//         primaryColor: Colors.black,
//         appBarTheme: AppBarTheme(
//           backgroundColor: lightGray,
//           foregroundColor: Colors.black,
//           elevation: 0.3,
//         ),
//         dividerTheme: DividerThemeData(
//             color: lightGray,
//             space: 20
//         ),
//         textTheme: GoogleFonts.robotoCondensedTextTheme().copyWith(
//           bodyLarge: const TextStyle(
//             color: Colors.black87,
//             fontSize: 28,
//           ),
//           bodyMedium: const TextStyle(
//             color: Colors.black87,
//             fontSize: 18,
//           ),
//           titleMedium: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.w400,
//             color: Colors.grey[700],
//           ),
//
//         ),
//         iconTheme: const IconThemeData(color: Colors.black54),
//         colorScheme: ColorScheme.fromSwatch().copyWith(
//           secondary: Colors.orange,
//           background: lightGray,
//         ),
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//         scaffoldBackgroundColor: Colors.black,
//         primaryColor: Colors.white,
//         cardColor: Colors.white.withOpacity(0.16),
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Colors.black,
//           foregroundColor: Colors.white,
//           elevation: 1,
//         ),
//         textTheme: const TextTheme(
//           bodyLarge: TextStyle(color: Colors.white),
//           bodyMedium: TextStyle(color: Colors.white70),
//         ),
//         iconTheme: const IconThemeData(color: Colors.white70),
//         colorScheme: const ColorScheme.dark().copyWith(
//           secondary: Colors.orange,
//           background: Colors.black,
//         ),
//       ),
//       themeMode: ThemeMode.system,
//       home: SettingView(),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:tombozi/presentation/screens/overlay/overlay_view.dart';
import 'package:tombozi/presentation/viewmodels/overlay_viewmodel.dart';

import 'DI/injection.dart';
import 'features/domain/entities/overlay_config.dart';
import 'features/domain/services/overlay_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

// Overlay entry point
@pragma("vm:entry-point")
void overlayMain() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OverlayView(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Overlay Window Example')),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final overlay = sl<OverlayViewModel>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final dpr = MediaQuery.of(context).devicePixelRatio;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final bool isGranted = await FlutterOverlayWindow.isPermissionGranted();
              if (isGranted) {
                await FlutterOverlayWindow.requestPermission();
              } else {

                final config = OverlayConfig(
                  widthSize: screenWidth,
                  devicePixelRatio: dpr,
                );

                sl<OverlayService>().initConfig(config);
                await overlay.showOverlay();
              }
            },
            child: const Text("Show Overlay"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              await FlutterOverlayWindow.closeOverlay();
            },
            child: const Text("Close Overlay"),
          ),
        ],
      ),
    );
  }
}
