import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:media_kit/media_kit.dart';
import 'core/config.dart';
import 'core/theme.dart';
import 'screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  runApp(const SadaApp());
}

class SadaApp extends StatelessWidget {
  const SadaApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: AppConfig.appName,
        shortcuts: {...WidgetsApp.defaultShortcuts, LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent()},
        debugShowCheckedModeBanner: false,
        theme: sadaTheme(),
        locale: const Locale('ar'),
        supportedLocales: const [Locale('ar')],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        builder: (c, w) => Directionality(textDirection: TextDirection.rtl, child: w!),
        home: const SplashGate(),
      );
}
