// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/imgs/profile_picture.jpeg";
  String name = "Nombre Apellido";
  String details = "1 Reviews 1 Photo";
  String comment = "Nice place";

  Review({
    Key? key,
    required this.pathImage,
    required this.name,
    required this.details,
    required this.comment,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      child: CircleAvatar(
        backgroundImage: AssetImage(pathImage),
      ),
    );
    final userName = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17, fontFamily: "Lato"),
      ),
    );
    final userInfo = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 12,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7),
        ),
      ),
    );
    final userComment = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 12,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
        ),
      ),
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment,
      ],
    );

    return Row(
      children: [photo, userDetails],
    );
  }
}
