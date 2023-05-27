import 'package:flutter/material.dart';

class HListDashbordComponent extends StatelessWidget {
  const HListDashbordComponent(
      {super.key, required this.title, this.hight = 200});
  final String title;
  final double hight;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: hight,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: hight,
                width: 200,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            )
          ]),
        )
      ],
    );
  }
}
