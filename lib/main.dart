import 'package:flutter/material.dart';
// import 'package:demoapp/pages/home_page1.dart'; // Đảm bảo đúng đường dẫn
import 'package:demoapp/pages/home_page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage2(), // Đúng với class trong homepage.dart
    );
  }
}
