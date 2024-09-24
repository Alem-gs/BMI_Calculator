import 'package:flutter/material.dart';

class reusableContainer extends StatelessWidget {
  final Color colorType;
  final Widget insideContainer;
  reusableContainer({required this.colorType, required this.insideContainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: insideContainer,
      height: 200,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colorType,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
