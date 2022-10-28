import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platzi_travels/src/description_place.dart';
import 'package:flutter_platzi_travels/src/gradient_back.dart';
import 'package:flutter_platzi_travels/src/reviewList.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        // body: const DescriptionPlace(
        //     namePlace: "El cairo, Egipto",
        //     stars: 5,
        //     descriptionPlace:
        //         "Nostrud voluptate laboris esse nulla ad proident incididunt. Non nostrud anim esse consectetur ea ut consequat Lorem. Ex nisi incididunt fugiat adipisicing ea ex eiusmod deserunt ipsum. Ea officia id duis tempor ad excepteur fugiat duis et dolore minim sunt."),
        body: Stack(
          children: [
            ListView(
              children: [
                DescriptionPlace(
                    namePlace: "El cairo, Egipto",
                    stars: 5,
                    descriptionPlace:
                        "Nostrud voluptate laboris esse nulla ad proident incididunt. Non nostrud anim esse consectetur ea ut consequat Lorem. Ex nisi incididunt fugiat adipisicing ea ex eiusmod deserunt ipsum. Ea officia id duis tempor ad excepteur fugiat duis et dolore minim sunt."),
                ReviewList()
              ],
            ),
            GradientBack("Popular")
          ],
        ),
      ),
    );
  }
}
