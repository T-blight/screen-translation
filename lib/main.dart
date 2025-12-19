import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tombozi/l10n/app_localizations.dart';
import 'package:tombozi/presentation/screens/home/home_view.dart';
import 'package:tombozi/presentation/screens/setting/setting_view.dart';
import 'package:tombozi/presentation/screens/translate/translate_view.dart';

void main() {
  runApp( MyApp());
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
          bodyLarge: const TextStyle(
            color: Colors.black87,
            fontSize: 28,
          ),
          bodyMedium: const TextStyle(
            color: Colors.black87,
            fontSize: 18,
          ),
          titleMedium: TextStyle(
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
      home: SettingView(),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutter_overlay_window/flutter_overlay_window.dart';
//
// void main() => runApp(const MyApp());
//
// // Overlay entry point
// @pragma("vm:entry-point")
// void overlayMain() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: OverlayContent(),
//   ));
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Overlay Window Example')),
//         body: const HomePage(),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//             onPressed: () async {
//               // Kiểm tra quyền overlay
//               final bool? isGranted = await FlutterOverlayWindow.isPermissionGranted();
//               if (isGranted == null || !isGranted) {
//                 // Yêu cầu quyền nếu chưa được cấp
//                 await FlutterOverlayWindow.requestPermission();
//               } else {
//                 // Hiển thị overlay
//                 await FlutterOverlayWindow.showOverlay(
//                   height: 200,
//                   width: 200,
//                   alignment: OverlayAlignment.center,
//                   enableDrag: true,
//                   overlayTitle: "Overlay Window",
//                   overlayContent: "This is a floating window",
//                 );
//               }
//             },
//             child: const Text("Show Overlay"),
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () async {
//               // Đóng overlay
//               await FlutterOverlayWindow.closeOverlay();
//             },
//             child: const Text("Close Overlay"),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class OverlayContent extends StatefulWidget {
//   const OverlayContent({super.key});
//
//   @override
//   State<OverlayContent> createState() => _OverlayContentState();
// }
//
// class _OverlayContentState extends State<OverlayContent> {
//   String _data = "Waiting for data...";
//
//   @override
//   void initState() {
//     super.initState();
//     // Lắng nghe dữ liệu từ main app
//     FlutterOverlayWindow.overlayListener.listen((event) {
//       setState(() {
//         _data = event.toString();
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.blue.withOpacity(0.8),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Overlay Window",
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//               ),
//               Text(
//                 _data,
//                 style: const TextStyle(color: Colors.white),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   // Gửi dữ liệu từ overlay về main app
//                   FlutterOverlayWindow.shareData("Hello from Overlay!");
//                 },
//                 child: const Text("Send Data"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }