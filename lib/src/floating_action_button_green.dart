import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({super.key});

  @override
  State<FloatingActionButtonGreen> createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool isFav = false;
  void onPressedFav() {
    setState(() {
      isFav = !isFav;
    });
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: isFav ? Text("favorito") : Text("desmarcado")));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: (isFav ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
      onPressed: onPressedFav,
    );
  }
}
