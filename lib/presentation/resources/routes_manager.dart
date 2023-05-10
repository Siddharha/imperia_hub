import 'package:flutter/material.dart';
import 'package:imperia_hub/presentation/auth/auth_page.dart';

import '../../pages.dart';

class Routes {
  static const String splashRoute = '/';
  static const String authRoute = '/auth';
  static const String homeRoute = '/home';
  static const String detailsLeadsRoute = '/home/details_leads';
  static const String noteRoute = '/home/details_leads/note';
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

      // case Routes.noteRoute:
      //   return PageRouteBuilder(
      //       settings: routeSettings,
      //       pageBuilder: (context, an1, an2) => const LeadsNotePage(),
      //       transitionsBuilder: (_, a, __, c) =>
      //           FadeTransition(opacity: a, child: c));

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
