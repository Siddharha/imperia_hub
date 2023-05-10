import 'package:flutter/material.dart';
import 'package:imperia_hub/presentation/resources/routes_manager.dart';
import 'package:imperia_hub/presentation/splash/splash_viewmodel.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    var splashViewModel = Provider.of<SplashViewModel>(context, listen: false);
    splashViewModel.loadSplash(() {
      Navigator.pushReplacementNamed(context, Routes.authRoute);
    });
    return const Material(
      child: Center(child: const Text("Imperia Hub")),
    );
  }
}
