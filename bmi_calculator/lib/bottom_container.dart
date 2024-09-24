import 'package:flutter/material.dart';
import 'constants.dart';

class bottomContainer extends StatelessWidget {
  bottomContainer({required this.containerText, required this.whenPressed});
  final String containerText;
  final VoidCallback whenPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: whenPressed,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomcontainerHeight,
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            containerText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
