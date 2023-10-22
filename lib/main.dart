import 'package:flutter/material.dart';
import 'package:whatssap_clone/screens/followers.dart';
//import 'package:whatssap_clone/colors.dart';
import 'package:whatssap_clone/screens/homePage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Color(0xFF075E55),
          ),
          primaryColor: Color(0xFF075E55)),
      home: homePage(),
    );
  }
}
