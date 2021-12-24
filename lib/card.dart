import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  String picture;
  String description;
  CustomCard({
    Key? key,
    required this.picture,
    required this.description,
  }) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool value1 = false;
  var isOff = 'off';
  var find = 'off';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(widget.picture),
                  width: 100,
                  height: 100,
                ),
                Switch(
                    value: value1,
                    onChanged: (bool value) {
                      setState(() {
                        value1 = value;
                        if (isOff == 'off') {
                          isOff = 'on';
                          String newPic =
                              widget.picture.replaceAll('off', 'on');
                          widget.picture = newPic;
                        } else {
                          isOff = 'off';
                          String newPic =
                              widget.picture.replaceAll('on', isOff);
                          widget.picture = newPic;
                        }
                      });
                    }),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Text(
                widget.description,
              ),
            ),
            Container(
                padding: const EdgeInsets.all(5),
                child: Text('Switch: ' + isOff))
          ],
        ),
      ),
    );
  }
}
