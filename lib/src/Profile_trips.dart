import 'package:flutter/material.dart';
import 'package:flutter_platzi_travels/src/Header_profile.dart';
import 'package:flutter_platzi_travels/src/card_image_profile.dart';
import 'package:flutter_platzi_travels/src/header_appbar.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        HeaderProfile(),
        ListView(
          children: [
            Container(margin: EdgeInsets.only(top: screenHeight * 0.25)),
            CardImageProfile(),
            CardImageProfile(),
            CardImageProfile(),
            CardImageProfile(),
            CardImageProfile(),
          ],
        ),
      ],
    );
  }
}
