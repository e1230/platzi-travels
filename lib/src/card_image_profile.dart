import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_platzi_travels/src/card_image.dart';
import 'package:flutter_platzi_travels/src/floating_action_button_green.dart';

class CardImageProfile extends StatelessWidget {
  const CardImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final celSize = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment(0, 1.2),
      children: [
        Container(
          margin: EdgeInsets.only(top: 60),
          height: 250,
          width: celSize.width * 0.95,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/imgs/mountain.jpeg"),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
              ]),
        ),
        Stack(
          alignment: Alignment(0.9, 1),
          children: [
            Container(
              height: 130,
              width: celSize.width * 0.7,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15,
                      offset: Offset(0, 7))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Knuckles Mountain Range",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hiking Water fall hunting. Natural bath, Scenary, & Photography ",
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Steps: 123,123,123",
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange),
                  ),
                ],
              ),
            ),
            FloatingActionButtonGreen(),
          ],
        ),
      ],
    );
  }
}
