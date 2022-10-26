// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_platzi_travels/src/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(
            pathImage: "assets/imgs/profile_picture.jpeg",
            name: "Edgar Beltran",
            details: "1 review 1 photo",
            comment: "ta bien"),
        Review(
            pathImage: "assets/imgs/urabe.jpeg",
            name: "Urabe Mikoto",
            details: "1 review 1 photo",
            comment: "ta bien x2"),
      ],
    );
  }
}
