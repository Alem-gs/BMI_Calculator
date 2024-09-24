import 'dart:math';

class CalculationFunction {
  CalculationFunction({required this.height, required this.weight});
  final int height;
  final int weight;

  late double bmi;

  double bmiCalculation() {
    bmi = weight / pow(height / 100, 2);
    //toStringAsFixed(1): Converts the double to a string with one decimal place.
    //double.parse(): Converts the string back to a double.
    return double.parse(bmi.toStringAsFixed(1));
  }

  String getTextResult() {
    if (bmi >= 25) {
      return 'overweight';
    } else if (bmi > 18 && bmi < 25) {
      return 'normal';
    } else {
      return 'under weight';
    }
  }

  String interpretation() {
    if (bmi >= 25) {
      return 'you have a higher than a normal body weight. Try to do exercise';
    } else if (bmi > 18 && bmi < 25) {
      return 'you are in a good codition';
    } else {
      return 'you have a lower than a normal body weight. Try to eat more';
    }
  }
}
