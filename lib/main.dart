import 'package:flutter/material.dart';
import 'meal1/HomePage/Home.dart';
import 'meal1/SinglePage/SinglePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: SinglePage(),
    );
  }
}
