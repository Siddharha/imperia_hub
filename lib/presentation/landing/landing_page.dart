import 'package:flutter/material.dart';
import 'package:imperia_hub/presentation/landing/components/landing_components.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return w < 600
        ? const Scaffold(
            bottomNavigationBar: NavBar(
              orientation: Axis.horizontal,
              selectedIndex: 0,
            ),
            body: LandingBodyComponent(type: 1),
          )
        : const Material(
            child: Row(
              children: [
                NavBar(
                  orientation: Axis.vertical,
                  selectedIndex: 0,
                ),
                Expanded(child: LandingBodyComponent(type: 2))
              ],
            ),
          );
  }
}
