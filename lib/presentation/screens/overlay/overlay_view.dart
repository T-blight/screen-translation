import 'package:flutter/material.dart' hide OverlayState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tombozi/presentation/bloc/overlay/overlay_state.dart'
    show OverlayState, OverlayVisibility, OverlayFormType;
import '../../bloc/overlay/overlay_bloc.dart';
import '../../bloc/overlay/overlay_event.dart';
import 'list_feature_overlay.dart';

class OverlayView extends StatelessWidget {
  const OverlayView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OverlayBloc, OverlayState>(
      builder: (context, state) {
        switch (state.formType) {
          case OverlayFormType.feature:
            return _widgetFeatureOverlay(context, state);
          case OverlayFormType.action:
            // TODO: Handle this case.
            throw UnimplementedError();
          case OverlayFormType.circle:
            return _widgetCircleOverlay(context);
        }
      },
    );
  }

  Widget _widgetCircleOverlay(BuildContext context) {

    return Material(
      color: Colors.white,
      child: GestureDetector(
        onTap: () {
          context.read<OverlayBloc>().add(SwitchFeatureOverlay());
        },

        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _widgetFeatureOverlay(
    BuildContext context,
    OverlayState overlayState,
  ) {

    final y = ((-overlayState.overlayConfig!.heightSize + 100) / 2);
    final localX =
        overlayState.overlayConfig!.widthSize -
        overlayState.overlayConfig!.calculatedRectangleSize;
    final x = overlayState.overlayPosition?.x.clamp(0.0, localX);

    Widget featureList(context){
      return GridView.count(
        primary: false,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(12),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: <Widget>[
            ...ListFeatureTranslate.values.map((e) {
              final feature = itemInOverlay[e]!;
              return FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: feature.color,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => feature.onClick,
                child: Icon(feature.icon),
              );
            })
        ],
      );
    }


    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => {context.read<OverlayBloc>().add(ShowOverlay())},
            child: Container(color: Colors.transparent),
          ),
          BlocSelector<OverlayBloc, OverlayState,OverlayFormType>(
            selector: (state) => state.formType,
            builder: (context, state) {
              return Positioned(
                top: 400,
                right: x,
                height:
                    overlayState.overlayConfig!.calculatedRectangleSize * 2.3,
                width: overlayState.overlayConfig!.calculatedRectangleSize,
                child: Row(
                  textDirection: x == 0 ? TextDirection.ltr : TextDirection.rtl,
                  children: [
                    // Expanded(
                    //   flex: 3,
                    //   child: Padding(
                    //     padding: EdgeInsets.symmetric(vertical: 10),
                    //     child: Column(
                    //       children: [
                    //         Expanded(
                    //           child: Column(
                    //             children: [
                    //               Expanded(
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                     color: Colors.green,
                    //                     borderRadius: BorderRadius.circular(20),
                    //                   ),
                    //                 ),
                    //               ),
                    //               SizedBox(height: 10),
                    //               Expanded(
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                     color: Colors.green,
                    //                     borderRadius: BorderRadius.circular(20),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //         Expanded(child: SizedBox()),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                      flex: 9,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: featureList(context),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
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
// import 'package:tombozi/presentation/widgets/overlays/
//
//
// overlay_view.dart';
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
