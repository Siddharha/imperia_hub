import 'package:flutter/material.dart';
import 'package:imperia_hub/presentation/auth/auth_page.dart';

import '../../pages.dart';

class Routes {
  static const String splashRoute = '/';
  static const String authRoute = '/auth';
  static const String landingRoute = '/landing';
  static const String fundsRoute = '/funds';
  static const String eventsRoute = '/events';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case Routes.authRoute:
        return PageRouteBuilder(
            settings: routeSettings,
            pageBuilder: (context, an1, an2) => const AuthPage(),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c));

      case Routes.landingRoute:
        return PageRouteBuilder(
            settings: routeSettings,
            pageBuilder: (context, an1, an2) => const LandingPage(),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c));

      case Routes.fundsRoute:
        return PageRouteBuilder(
            settings: routeSettings,
            pageBuilder: (context, an1, an2) => const FundsPage(),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c));

      // MaterialPageRoute(builder: (context) => const CreateLeadsPage());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) => const Scaffold(
              body: Center(child: Text('Undefined page due to bad route call')),
            )));
  }
}
