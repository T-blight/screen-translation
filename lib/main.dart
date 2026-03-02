import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tombozi/l10n/app_localizations.dart';
import 'package:tombozi/presentation/bloc/overlay/overlay_bloc.dart';
import 'package:tombozi/presentation/bloc/overlay/overlay_event.dart';
import 'package:tombozi/presentation/screens/overlay/overlay_view.dart';
import 'package:tombozi/presentation/screens/setting/setting_view.dart';

import 'DI/injection.dart';
import 'features/domain/entities/overlay_config.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final lightGray = const Color(0xFFF0F0F0);
    final screenWidth = View.of(context).physicalSize.width /
        View.of(context).devicePixelRatio;
    final devicePixelRatio = View.of(context).devicePixelRatio;
    final screenHeight =
        View.of(context).physicalSize.height / View.of(context).devicePixelRatio;

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
void overlayMain() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const OverlayRoot());
}
class OverlayRoot extends StatelessWidget {
  const OverlayRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Builder(
        builder: (context) {
          final screenWidth = View.of(context).physicalSize.width /
              View.of(context).devicePixelRatio;
          final devicePixelRatio = View.of(context).devicePixelRatio;
          final screenHeight =
              View.of(context).physicalSize.height / View.of(context).devicePixelRatio;
          return BlocProvider(
            create: (_) => OverlayBloc(
              OverlayConfig(
                devicePixelRatio: devicePixelRatio,
                widthSize: screenWidth,
                heightSize: screenHeight,
              ),
            ),
            child: const OverlayView(),
          );
        },
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