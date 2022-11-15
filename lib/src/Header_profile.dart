import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_platzi_travels/src/card_image_profile.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight * 0.45,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp)),
          child: FittedBox(
            fit: BoxFit.none,
            alignment: Alignment(-1.5, -0.8),
            child: Container(
              width: screenHeight,
              height: screenHeight,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                  borderRadius: BorderRadius.circular(screenHeight / 2)),
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontFamily: "Lato",
                    ),
                  ),
                  Icon(
                    Icons.settings,
                    color: Color.fromARGB(150, 255, 255, 255),
                    size: 20,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    backgroundImage:
                        AssetImage("assets/imgs/profile_picture.jpeg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Edgar Beltrán",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Lato",
                            fontSize: 22),
                      ),
                      Text(
                        "emaurobel1230@hotmail.com",
                        style: TextStyle(
                            color: Color.fromARGB(100, 255, 255, 255),
                            fontFamily: "Lato",
                            fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.bookmark_outline,
                      size: 25,
                      color: Colors.indigo,
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(150, 255, 255, 255),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.tv_outlined,
                      size: 25,
                      color: Colors.indigo,
                    ),
                  ),
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(
                      Icons.add,
                      size: 55,
                      color: Colors.indigo,
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(150, 255, 255, 255),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.email_outlined,
                      size: 25,
                      color: Colors.indigo,
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(150, 255, 255, 255),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.person,
                      size: 25,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
