import 'package:flutter/material.dart';
import 'package:imperia_hub/presentation/resources/color_manager.dart';
import 'package:imperia_hub/presentation/resources/styles_manager.dart';

import '../../../utils/utild.dart';

class FundListComponent extends StatelessWidget {
  const FundListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return isMobileView(context)
        ? ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return LFundItemCell();
            })
        : GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: 3.8),
            itemBuilder: (context, index) {
              return GFundItemCell();
            });
  }
}

class LFundItemCell extends StatelessWidget {
  const LFundItemCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.cardBack,
      child: ListTile(
        title: Text("data"),
        subtitle: Text("data"),
        trailing: ElevatedButton(
          onPressed: () {},
          child: Text("Pay"),
          style: getNormalButtonStyle(),
        ),
      ),
    );
  }
}

class GFundItemCell extends StatelessWidget {
  const GFundItemCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.cardBack,
      child: GridTile(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "data",
                      style: getLoginTitleStyle(),
                    ),
                    Text("data"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Pay"),
                style: getNormalButtonStyle(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
