import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;

  BMICalculator({this.height, this.weight});

  String computeBMI() {
    double bmi = weight / pow(height, 2);
    return bmi.toStringAsFixed(1);
  }
}
