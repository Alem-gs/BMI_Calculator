import 'package:bmi_calculator/constants.dart';
//import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusableContainer.dart';
import 'package:flutter/material.dart';
import 'bottom_container.dart';
//import 'constants.dart';
//import 'main.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final double bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultPageYourResult,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: reusableContainer(
              colorType: kContainerInActiveColor,
              insideContainer: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kOverWeight,
                  ),
                  Text(
                    bmiResult.toString(),
                    style: kNumbersTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomContainer(
            containerText: 'RE-CALCULATE',
            whenPressed: () {
              Navigator.pop(context);
              //we can use the below instead of the above one, if we have many page navigation
              //Navigator.pushNamed(context, '/result');
            },
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          //   child: Container(
          //     color: kBottomContainerColor,
          //     height: kBottomcontainerHeight,
          //     width: double.infinity,
          //     child: Center(
          //       child: const Text(
          //         'RE-CALCULATE',
          //         style: TextStyle(
          //           fontSize: 20,
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
