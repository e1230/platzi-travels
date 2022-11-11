import 'package:flutter/material.dart';
import 'package:flutter_platzi_travels/src/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  const CardImage({this.pathImage = "assets/img/placeholder.png"});

  final String pathImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [
        Container(
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
        ),
        FloatingActionButtonGreen(),
      ],
    );
  }
}
