//Ahmad Huzaifi Bin Ahmad Azahri 1918091 Section 1
import 'package:assignment/kitchen.dart';
import 'package:assignment/all.dart';
import 'package:assignment/parking.dart';
import 'package:assignment/living_room.dart';
import 'package:flutter/material.dart';
import 'bottombar.dart';

void main() {
  runApp(const IoTHome());
}

class IoTHome extends StatelessWidget {
  const IoTHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[600],
          centerTitle: true,
          title: const Text('IoT Home'),
          bottom: const TabBar(tabs: [
            Tab(
                child: Text(
              'All',
              textAlign: TextAlign.center,
            )),
            Tab(
                child: Text(
              'Living Room',
              textAlign: TextAlign.center,
            )),
            Tab(
                child: Text(
              'Kitchen',
              textAlign: TextAlign.center,
            )),
            Tab(
                child: Text(
              'Parking',
              textAlign: TextAlign.center,
            )),
          ]),
        ),
        bottomNavigationBar: const CustomBottomBar(),
        body: const TabBarView(children: [
          All(),
          LivingRoom(),
          Kitchen(),
          Parking(),
        ]),
      ),
    );
  }
}
