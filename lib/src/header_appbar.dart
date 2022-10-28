import 'package:flutter/material.dart';
import 'package:flutter_platzi_travels/src/card_image_list.dart';
import 'package:flutter_platzi_travels/src/gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Bienvenido"),
        CardImageList(),
      ],
    );
  }
}
