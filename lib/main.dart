import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:tombozi/l10n/app_localizations.dart';
import 'package:tombozi/presentation/bloc/overlay/overlay_bloc.dart';
import 'package:tombozi/presentation/bloc/overlay/overlay_event.dart';
import 'package:tombozi/presentation/screens/overlay/overlay_view.dart';
import 'package:tombozi/presentation/screens/setting/setting_view.dart';

import 'DI/injection.dart';
import 'features/domain/entities/overlay_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final lightGray = const Color(0xFFF0F0F0);
    final screenWidth = MediaQuery.of(context).size.width;
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    final screenHeight = MediaQuery.of(context).size.height;
    debugPrint('Heigth:  ${screenHeight}----------${screenWidth}---------------------------------------------');

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await FlutterOverlayWindow.shareData(
        jsonEncode({
          "w": screenWidth,
          "h": screenHeight,
          "dpr": devicePixelRatio,
        }),
      );
    });
    return MultiBlocProvider(
      providers: [
        BlocProvider<OverlayBloc>(
          create: (context) => OverlayBloc(
            OverlayConfig(
              devicePixelRatio: devicePixelRatio,
              widthSize: screenWidth,
              heightSize: screenHeight,
            ),
          )
        )
      ],
      child:  MaterialApp(
        color: Colors.white,
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
        ),

        darkTheme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
        ),

        themeMode: ThemeMode.system,
        home: HomePage(),
      )
    );
  }
}

@pragma("vm:entry-point")
void overlayMain() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(OverlayRoot());
}

class OverlayRoot extends StatefulWidget {
  const OverlayRoot({super.key});

  @override
  State<OverlayRoot> createState() => _OverlayRootState();
}

class _OverlayRootState extends State<OverlayRoot> {

  double? screenWidth;
  double? screenHeight;
  double? devicePixelRatio;

  @override
  void initState() {
    super.initState();

    FlutterOverlayWindow.overlayListener.listen((event) {
      final data = jsonDecode(event);

      setState(() {
        screenWidth = (data["w"] as num).toDouble();
        screenHeight = (data["h"] as num).toDouble();
        devicePixelRatio = (data["dpr"] as num).toDouble();
      });

      debugPrint("Height received: $screenWidth,$screenHeight");
    });
  }

  @override
  Widget build(BuildContext context) {
    if (screenWidth == null) {
      return const SizedBox();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => OverlayBloc(
          OverlayConfig(
            devicePixelRatio: devicePixelRatio!,
            widthSize: screenWidth!,
            heightSize: screenHeight!,
          ),
        ),
        child: const OverlayView(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<OverlayBloc>().add(LaunchOverlay());
              },
              child: const Text("Show Overlay"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
  }
}