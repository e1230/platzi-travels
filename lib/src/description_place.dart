// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final double stars;
  final String descriptionPlace;
  // ignore: use_key_in_widget_constructors
  const DescriptionPlace({
    required this.namePlace,
    required this.stars,
    required this.descriptionPlace,
  });
  @override
  Widget build(BuildContext context) {
    final starBorder = Container(
      margin: const EdgeInsets.only(top: 323, right: 3),
      child: const Icon(Icons.star_border, color: Colors.amber),
    );
    final starHalf = Container(
      margin: const EdgeInsets.only(top: 323, right: 3),
      child: const Icon(Icons.star_half, color: Colors.amber),
    );
    final star = Container(
      margin: const EdgeInsets.only(top: 323, right: 3),
      child: const Icon(Icons.star, color: Colors.amber),
    );
    List<Widget> makeStar() {
      if (stars == 0) {
        return [starBorder, starBorder, starBorder, starBorder, starBorder];
      } else if (stars > 0 && stars < 1) {
        return [starBorder, starBorder, starBorder, starBorder, starHalf];
      } else if (stars == 1) {
        return [starBorder, starBorder, starBorder, starBorder, star];
      } else if (stars > 1 && stars < 2) {
        return [starBorder, starBorder, starBorder, star, starHalf];
      } else if (stars == 2) {
        return [starBorder, starBorder, starBorder, star, star];
      } else if (stars > 2 && stars < 3) {
        return [starBorder, starBorder, star, star, starHalf];
      } else if (stars == 3) {
        return [starBorder, starBorder, star, star, star];
      } else if (stars > 3 && stars < 4) {
        return [starBorder, star, star, star, starHalf];
      } else if (stars == 4) {
        return [starBorder, star, star, star, star];
      } else if (stars > 4 && stars < 5) {
        return [star, star, star, star, starHalf];
      } else if (stars == 5) {
        return [star, star, star, star, star];
      } else {
        return [starBorder, starBorder, starBorder, starBorder, starBorder];
      }
    }

    final titleStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 320, left: 20, right: 20),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "Lato",
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: makeStar(),
        ),
      ],
    );
    final description = Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: "Lato",
            color: Color(0xff56575a)),
      ),
    );
    return Column(
      children: [titleStars, description],
    );
  }
}
