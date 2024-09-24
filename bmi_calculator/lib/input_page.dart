import 'package:bmi_calculator/calculation_function.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';
import 'reusableContainer.dart';
import 'constants.dart';
import 'bottom_container.dart';
import 'rounded_icon_button.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  late Gender selectedGender = Gender.male;
  int height = 180;
  int weight = 60;
  int Age = 19;
  // Color maleColor = containerInActiveColor;
  // Color femaleColor = containerInActiveColor;
  // void updateColor(Gender selectedGender) {
  //   // ignore: unrelated_type_equality_checks
  //   if (selectedGender == Gender.male) {
  //     if (maleColor == containerInActiveColor) {
  //       maleColor = containerActiveColor;
  //       femaleColor = containerInActiveColor;
  //     } else {
  //       maleColor = containerInActiveColor;
  //     }
  //   } else if (selectedGender == Gender.female) {
  //     if (femaleColor == containerInActiveColor) {
  //       femaleColor = containerActiveColor;
  //       maleColor = containerInActiveColor;
  //     } else {
  //       femaleColor = containerInActiveColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: reusableContainer(
                      colorType: selectedGender == Gender.male
                          ? kContainerActiveColor
                          : kContainerInActiveColor,
                      insideContainer: IconContent(
                          iconType: FontAwesomeIcons.mars, sex: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: reusableContainer(
                      colorType: selectedGender == Gender.female
                          ? kContainerActiveColor
                          : kContainerInActiveColor,
                      insideContainer: IconContent(
                          iconType: FontAwesomeIcons.venus, sex: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kContainerInActiveColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kSexTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumbersTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kSexTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFFF8D8E98),
                      trackHeight: 1.0,
                      thumbColor: Color(0xFFEB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: kMinimumHeight,
                      max: kMaximumHeight,
                      //we don't need the below comments because of sliderTheme in above
                      //activeColor: Color(0xFFEB15555),
                      //inactiveColor: Color(0xFFF8D8E98),
                      //newValue is the value when the slider moves
                      onChanged: (double newValue) {
                        setState(
                          () {
                            // newValue.round() is to round the double value of newValue into int of height
                            height = newValue.round();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableContainer(
                    colorType: kContainerInActiveColor,
                    insideContainer: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kSexTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumbersTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              iconType: FontAwesomeIcons.minus,
                              whenPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ), //to create a custom button

                            //the FloatingActionButton is def button
                            // FloatingActionButton(
                            //   shape: CircleBorder(),
                            //   onPressed: () {},
                            //   child: Icon(Icons.add),
                            // ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundedIconButton(
                              iconType: FontAwesomeIcons.plus,
                              whenPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   height: 200,
                  //   margin: EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //     color: kContainerInActiveColor,
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  // ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kContainerInActiveColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kSexTextStyle,
                        ),
                        Text(
                          Age.toString(),
                          style: kNumbersTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              iconType: FontAwesomeIcons.minus,
                              whenPressed: () {
                                setState(
                                  () {
                                    Age--;
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedIconButton(
                              iconType: FontAwesomeIcons.plus,
                              whenPressed: () {
                                setState(
                                  () {
                                    Age++;
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomContainer(
            containerText: 'CALCULATE',
            whenPressed: () {
              CalculationFunction calc =
                  CalculationFunction(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultsPage(
                      bmiResult: calc.bmiCalculation(),
                      resultText: calc.getTextResult(),
                      interpretation: calc.interpretation(),
                    );
                  },
                ),
              );
              //we can use the below instead of the above one, if we have many page navigation
              //Navigator.pushNamed(context, '/result');
            },
          ),
        ],
      ),
    );

    // floatingActionButton: Theme(
    //   data: ThemeData(),
    //   child: FloatingActionButton(
    //     child: Icon(Icons.add),
    //   ),
    // ),
  }
}
