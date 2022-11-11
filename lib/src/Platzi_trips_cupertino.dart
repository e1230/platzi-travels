import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platzi_travels/src/Profile_trips.dart';
import 'package:flutter_platzi_travels/src/Search_trips.dart';
import 'package:flutter_platzi_travels/src/home_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  const PlatziTripsCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => HomeTrips(),
            );

          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => SearchTrips(),
            );

          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => ProfileTrips(),
            );
          default:
            return CupertinoTabView(
              builder: (BuildContext context) => HomeTrips(),
            );
        }
      },
      tabBar: CupertinoTabBar(activeColor: Colors.indigo, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ]),
    ));
  }
}
