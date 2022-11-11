import 'package:flutter/material.dart';
import 'package:flutter_platzi_travels/src/reviewList.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        HeaderAppbar()
      ],
    );
  }
}
