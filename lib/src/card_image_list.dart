import 'package:flutter/material.dart';
import 'package:flutter_platzi_travels/src/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: const [
          CardImage(
            pathImage: "assets/imgs/beach_palm.webp",
          ),
          CardImage(
            pathImage: "assets/imgs/beach.jpeg",
          ),
          CardImage(
            pathImage: "assets/imgs/mountain_stars.jpeg",
          ),
          CardImage(
            pathImage: "assets/imgs/mountain.jpeg",
          ),
          CardImage(
            pathImage: "assets/imgs/river.webp",
          ),
          CardImage(
            pathImage: "assets/imgs/sunset.jpeg",
          ),
        ],
      ),
    );
  }
}
