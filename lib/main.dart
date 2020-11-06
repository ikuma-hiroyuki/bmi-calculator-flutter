import 'package:flutter/material.dart';
import './input_page.dart';

void main() => runApp(BMICalculator());

const int MAIN_COLOR = 0xFF0A0E21;

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(MAIN_COLOR),
        scaffoldBackgroundColor: Color(MAIN_COLOR),
      ),
      home: InputPage(),
    );
  }
}
