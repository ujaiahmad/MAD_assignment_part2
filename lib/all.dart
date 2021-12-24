import 'package:flutter/material.dart';
import 'card.dart';

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Wrap(alignment: WrapAlignment.spaceEvenly, children: [
          CustomCard(
            picture: "lib/assets/living-room-off.png",
            description: "All Lamp",
          ),
          CustomCard(
              picture: "lib/assets/dining-table-off.png",
              description: "All Table"),
          CustomCard(
              picture: "lib/assets/parking-area-off.png",
              description: "Parking Area"),
          CustomCard(
              picture: "lib/assets/socket-off.png", description: "All Socket"),
          CustomCard(
              picture: "lib/assets/gate-off.png", description: "Front Gate"),
        ])
      ],
    );
  }
}
