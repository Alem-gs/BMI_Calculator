import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData iconType;
  final VoidCallback whenPressed;
  RoundedIconButton({required this.iconType, required this.whenPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: whenPressed,
      child: Icon(iconType),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
