import 'package:flutter/material.dart';
import 'card.dart';

class Kitchen extends StatelessWidget {
  const Kitchen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Wrap(alignment: WrapAlignment.spaceEvenly, children: [
        CustomCard(
            picture: "lib/assets/dining-table-off.png",
            description: "Kitchen Table"),
        CustomCard(
            picture: "lib/assets/socket-off.png",
            description: "Kitchen Socket"),
      ])
    ]);
  }
}
