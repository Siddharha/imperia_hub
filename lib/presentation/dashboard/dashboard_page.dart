import 'package:flutter/material.dart';

import 'component/dashboard_component.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DashbordComponent(
          title: "Upcoming Events",
        ),
        DashbordComponent(
          title: "Upcoming Meetings",
        ),
      ],
    );
  }
}
