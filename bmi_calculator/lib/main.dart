//import 'package:bmi_calculator/results_page.dart';

import 'input_page.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          //scaffoldBackgroundColor: Color(0xFF0A0E21),
          //appBarTheme: AppBarTheme(
          // titleTextStyle: TextStyle(
          //   color: Colors.white,
          // ),
          //backgroundColor: Color(0xFF0A0E21),
          //),
          ),
      home: InputPage(),
      //since we only have one navigation using navigator.pushNamed is not necessary
      // routes: {
      //   '/result': (context) => ResultsPage(),
      // },
    );
  }
}
