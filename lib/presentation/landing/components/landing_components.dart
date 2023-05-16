import 'package:flutter/material.dart';
import 'package:imperia_hub/presentation/landing/landing_viewmodel.dart';
import 'package:provider/provider.dart';

import '../../../pages.dart';

class NavBar extends StatelessWidget {
  const NavBar(
      {super.key,
      this.orientation,
      this.selectedIndex,
      this.onDestinationSelected});

  final Axis? orientation;
  final int? selectedIndex;
  final Function(int)? onDestinationSelected;
  @override
  Widget build(BuildContext context) {
    return orientation == Axis.horizontal
        ? NavigationBar(
            selectedIndex: selectedIndex ?? 0,
            destinations: getNavDestinations(),
            onDestinationSelected: onDestinationSelected,
          )
        : NavigationRail(
            destinations: getNavRailDestinations(),
            onDestinationSelected: onDestinationSelected,
            selectedIndex: selectedIndex);
  }
}

List<Widget> getNavDestinations() {
  return [
    const NavigationDestination(
        icon: Icon(Icons.dashboard), label: 'Dashboard'),
    const NavigationDestination(
        icon: Icon(Icons.account_balance), label: 'Fund'),
    const NavigationDestination(icon: Icon(Icons.event), label: 'Events'),
    const NavigationDestination(
        icon: Icon(Icons.notifications), label: 'Notifications'),
    const NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
  ];
}

List<NavigationRailDestination> getNavRailDestinations() {
  return [
    const NavigationRailDestination(
        icon: Icon(Icons.dashboard), label: Text('Dashboard')),
    const NavigationRailDestination(
        icon: Icon(Icons.account_balance), label: Text('Fund')),
    const NavigationRailDestination(
        icon: Icon(Icons.event), label: Text('Events')),
    const NavigationRailDestination(
        icon: Icon(Icons.notifications), label: Text('Notifications')),
    const NavigationRailDestination(
        icon: Icon(Icons.person), label: Text('Prifile'))
  ];
}

class LandingBodyComponent extends StatelessWidget {
  const LandingBodyComponent({super.key, required this.type});
  final int type;

  @override
  Widget build(BuildContext context) {
    return Consumer<LandingViewModel>(
      builder: (context, vm, child) {
        return AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: getScreen(vm.selectedNavItem));
      },
    );
  }
}

Widget getScreen(int selectedNavItem) {
  switch (selectedNavItem) {
    case 0:
      return DashboardPage();
    default:
      return Center(child: Text("Unknown Page"));
  }
}
