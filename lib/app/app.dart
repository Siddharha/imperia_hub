import 'package:flutter/material.dart';
import 'package:imperia_hub/pages.dart';
import 'package:imperia_hub/presentation/landing/landing_viewmodel.dart';
import 'package:provider/provider.dart';

import '../presentation/resources/routes_manager.dart';
import '../presentation/resources/theme_manager.dart';
import '../presentation/splash/splash_viewmodel.dart';

class ImperiaHubApp extends StatelessWidget {
  const ImperiaHubApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashViewModel()),
        ChangeNotifierProvider(create: (_) => LandingViewModel()),
      ],
      child: MaterialApp(
        title: "Imperia Hub",
        debugShowCheckedModeBanner: false,
        theme: getAppTheme(),
        darkTheme: getAppDarkTheme(),
        themeMode: ThemeMode.light,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashRoute,
      ),
    );
  }
}
