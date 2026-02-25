import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';

class OverlayContent extends StatefulWidget {
  const OverlayContent({super.key});

  @override
  State<OverlayContent> createState() => _OverlayContentState();
}

class _OverlayContentState extends State<OverlayContent> {


  @override
  void initState() {
    super.initState();
    FlutterOverlayWindow.overlayListener.listen((event) {
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () {
          debugPrint("Single tap");
        },

        onDoubleTap: () {
          debugPrint("Double tap");
        },

        onLongPress: () {
          debugPrint("Long press");
        },

        onPanUpdate: (details) {
          debugPrint("Dragging: ${details.delta}");
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
            image: const DecorationImage(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              fit: BoxFit.cover,
            ),
          ),

        ),
      ),
    );
  }
}

///===========================================================\\\\
///
///
///
///
/// =====================================================
///
///
// import 'package:flutter/material.dart';
// import 'package:flutter_overlay_window/flutter_overlay_window.dart';
// import 'package:tombozi/presentation/widgets/overlays/overlay_bubble.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// // ENTRY POINT CHO OVERLAY
// @pragma("vm:entry-point")
// void overlayMain() {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: OverlayBubble(),
//   ));
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   Future<void> _requestPermission() async {
//     bool isGranted = await FlutterOverlayWindow.isPermissionGranted();
//     if (!isGranted) {
//       await FlutterOverlayWindow.requestPermission();
//     }
//   }
//
//   Future<void> _showOverlay() async {
//     await FlutterOverlayWindow.showOverlay(
//       enableDrag: true,
//       overlayTitle: "Chat Head",
//       overlayContent: "Overlay Running",
//       flag: OverlayFlag.defaultFlag,
//       visibility: NotificationVisibility.visibilityPublic,
//       height: 100,
//       width: 100,
//       startPosition: OverlayPosition(0, 300),
//     );
//   }
//
//   Future<void> _closeOverlay() async {
//     await FlutterOverlayWindow.closeOverlay();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Overlay Example")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: _requestPermission,
//                 child: const Text("Request Permission"),
//               ),
//               ElevatedButton(
//                 onPressed: _showOverlay,
//                 child: const Text("Show Chat Head"),
//               ),
//               ElevatedButton(
//                 onPressed: _closeOverlay,
//                 child: const Text("Close Overlay"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // class ChatHeadOverlay extends StatefulWidget {
// //   const ChatHeadOverlay({super.key});
// //
// //   @override
// //   State<ChatHeadOverlay> createState() => _ChatHeadOverlayState();
// // }
// //
// // class _ChatHeadOverlayState extends State<ChatHeadOverlay> {
// //
// //   void _openApp() {
// //     FlutterOverlayWindow.closeOverlay();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Material(
// //       color: Colors.transparent,
// //       child: Center(
// //         child: GestureDetector(
// //           onTap: _openApp,
// //           child: Container(
// //             width: 70,
// //             height: 70,
// //             decoration: const BoxDecoration(
// //               shape: BoxShape.circle,
// //               color: Colors.blue,
// //             ),
// //             child: const Icon(
// //               Icons.chat,
// //               color: Colors.white,
// //               size: 35,
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }