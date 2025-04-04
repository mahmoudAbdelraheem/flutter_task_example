import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_task_example/core/routing/app_router.dart';
import 'package:flutter_task_example/core/routing/routes.dart';
import 'package:flutter_task_example/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        //! for localization and arabic direction
        locale: const Locale('ar'),
        supportedLocales: const [
          Locale('ar'),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        title: 'Flutter task example',

        theme: AppTheme.mainTheme,
        initialRoute: Routes.homeScreen,
        onGenerateRoute: (settings) => AppRouter().generateRoute(settings),
      ),
    );
  }
}
