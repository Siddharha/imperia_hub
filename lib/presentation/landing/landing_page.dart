import 'package:flutter/material.dart';
import 'package:imperia_hub/app/constant.dart';
import 'package:imperia_hub/presentation/landing/components/landing_components.dart';
import 'package:imperia_hub/presentation/landing/landing_viewmodel.dart';
import 'package:imperia_hub/utils/utild.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return isMobileView(context)
        ? Scaffold(
            bottomNavigationBar:
                Consumer<LandingViewModel>(builder: (context, vm, _) {
              return NavBar(
                orientation: Axis.horizontal,
                selectedIndex: vm.selectedNavItem,
                onDestinationSelected: (p) => vm.selectNavItem(p),
              );
            }),
            body: const LandingBodyComponent(type: 1),
          )
        : Material(
            child: Row(
              children: [
                Consumer<LandingViewModel>(builder: (context, vm, _) {
                  return NavBar(
                    orientation: Axis.vertical,
                    selectedIndex: vm.selectedNavItem,
                    onDestinationSelected: (p) => vm.selectNavItem(p),
                  );
                }),
                const Expanded(child: LandingBodyComponent(type: 2))
              ],
            ),
          );
  }
}
