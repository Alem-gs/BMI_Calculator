import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

//then go to the bottom and style: sexTextStyle,

class IconContent extends StatelessWidget {
  final IconData iconType;
  final String sex;
  IconContent({required this.iconType, required this.sex});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconType,
          size: 40,
        ),
        SizedBox(height: 15),
        Text(
          sex,
          style: kSexTextStyle,
        )
      ],
    );
  }
}
