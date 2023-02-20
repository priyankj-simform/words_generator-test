import 'package:bot_toast/bot_toast.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sneakpeek/generated/l10n.dart';
import 'package:sneakpeek/modules/splash/splash_screen.dart';
import 'package:sneakpeek/routes.dart';
import 'package:sneakpeek/values/app_theme.dart';

class SneakPeekApp extends StatelessWidget {
  const SneakPeekApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: BotToastInit(),
      navigatorObservers: [
        BotToastNavigatorObserver(),
      ],
      home: const SplashScreen(),
      onGenerateRoute: AppNavigator.onGenerateRoute,
      navigatorKey: AppNavigator.navigatorKey,
      supportedLocales: Localization.delegate.supportedLocales,
      localizationsDelegates: const [
        Localization.delegate,
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: AppTheme.getTheme(),
    );
  }
}
