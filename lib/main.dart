import 'package:flutter/material.dart';
import 'package:ui_sample/one/home.dart';
import 'package:ui_sample/one/one.dart';
import 'package:ui_sample/two/home.dart';
import 'package:ui_sample/screens/category.dart';
import 'package:ui_sample/screens/dummy_data.dart';
import 'package:ui_sample/screens/categories_screen.dart';
import 'package:ui_sample/two/two.dart';
import 'package:ui_sample/three/three.dart';
import 'package:ui_sample/four/four.dart';
import 'package:ui_sample/five/five.dart';
import 'package:ui_sample/six/six.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen3(),
    );
  }
}