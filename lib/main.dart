import 'package:flutter/material.dart';
import 'package:smart_home/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        buttonColor: Color(0xff5E9F7B),
        backgroundColor: Color(0xff8EA096),
      ),
      home: HomeScreen(),
    );
  }
}
