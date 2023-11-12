import 'package:flutter/material.dart';
import 'package:random_message/pages/home_page.dart';

void main() {
  runApp(MyRandomApp());
}



class MyRandomApp extends StatelessWidget {
  MyRandomApp ({super.key});

@override
Widget build (BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: HomePage(),
  );
}}
