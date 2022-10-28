import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({this.pathImage = "assets/img/placeholder.png"});

  final String pathImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(top: 80, left: 20),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              pathImage,
            ),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
          ]),
    );
  }
}
