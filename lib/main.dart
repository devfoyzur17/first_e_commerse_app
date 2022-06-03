// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Screen/home_screen.dart';
import 'widget/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My first e commerse app",
      home: BottomNavBar(),

    );
    
  }
}