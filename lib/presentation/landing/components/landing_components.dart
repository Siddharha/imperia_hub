import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, this.orientation, this.selectedIndex});

  final Axis? orientation;
  final int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return orientation == Axis.horizontal
        ? NavigationBar(
            selectedIndex: selectedIndex ?? 0,
            destinations: getNavDestinations())
        : NavigationRail(
            destinations: getNavRailDestinations(),
            selectedIndex: selectedIndex);
  }
}

List<Widget> getNavDestinations() {
  return [
    NavigationDestination(icon: Icon(Icons.dashboard), label: 'Dashboard'),
    NavigationDestination(icon: Icon(Icons.account_balance), label: 'Fund'),
    NavigationDestination(icon: Icon(Icons.event), label: 'Events'),
    NavigationDestination(
        icon: Icon(Icons.notifications), label: 'Notifications'),
    NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
  ];
}

List<NavigationRailDestination> getNavRailDestinations() {
  return [
    NavigationRailDestination(
        icon: Icon(Icons.dashboard), label: Text('Dashboard')),
    NavigationRailDestination(
        icon: Icon(Icons.account_balance), label: Text('Fund')),
    NavigationRailDestination(icon: Icon(Icons.event), label: Text('Events')),
    NavigationRailDestination(
        icon: Icon(Icons.notifications), label: Text('Notifications')),
    NavigationRailDestination(icon: Icon(Icons.person), label: Text('Prifile'))
  ];
}

class LandingBodyComponent extends StatelessWidget {
  const LandingBodyComponent({super.key, required this.type});
  final int type;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
