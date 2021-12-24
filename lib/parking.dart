import 'package:flutter/material.dart';
//import 'top_bar.dart';
import 'card.dart';

class Parking extends StatelessWidget {
  const Parking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Row(
        //   children: [CustomTopBar()],
        // ),
        Wrap(alignment: WrapAlignment.spaceEvenly, children: [
          CustomCard(
              picture: "lib/assets/parking-area-off.png",
              description: "Parking Area"),
          CustomCard(
              picture: "lib/assets/socket-off.png",
              description: "Garage Socket"),
          CustomCard(
              picture: "lib/assets/gate-off.png", description: "Front Gate"),
        ])
      ],
    );
  }
}
