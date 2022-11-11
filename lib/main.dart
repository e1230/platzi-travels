import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platzi_travels/src/Platzi_trips.dart';
import 'package:flutter_platzi_travels/src/description_place.dart';
import 'package:flutter_platzi_travels/src/gradient_back.dart';
import 'package:flutter_platzi_travels/src/header_appbar.dart';
import 'package:flutter_platzi_travels/src/header_tercer_reto.dart';
import 'package:flutter_platzi_travels/src/reviewList.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(title: 'Material App', home: PlatziTrips());
  }
}
