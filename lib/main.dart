import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0A0e21),
        scaffoldBackgroundColor: Color(0xFF0A0e21),
        accentColor: Colors.purple,
        textTheme: TextTheme(
          body1: TextStyle(color: Color(0xFFFFFFF)),
        ),
      ),
      home: InputPage(),
    );
  }
}