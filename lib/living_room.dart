import 'package:flutter/material.dart';
import 'card.dart';

class LivingRoom extends StatelessWidget {
  const LivingRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Wrap(alignment: WrapAlignment.spaceEvenly, children: [
          CustomCard(
            picture: "lib/assets/living-room-off.png",
            description: "Living Room Lamp",
          ),
          CustomCard(
              picture: "lib/assets/dining-table-off.png",
              description: "Living Room Table"),
          CustomCard(
              picture: "lib/assets/socket-off.png",
              description: "Living Room Socket"),
          CustomCard(
              picture: "lib/assets/floor-lamp-off.png",
              description: "Floor Lamp"),
        ])
      ],
    );
  }
}
