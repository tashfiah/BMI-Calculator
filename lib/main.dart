import 'package:flutter/material.dart';
import 'screens/InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF172557),
        scaffoldBackgroundColor: Color(0xFF172557),
      ),
      home: InputPage(),
    );
  }
}
