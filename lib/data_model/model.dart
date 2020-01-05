import 'dart:math';

class BMICalculator {
  BMICalculator({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String computeBMI() {
    _bmi = weight / pow(height, 2);
    return _bmi.toStringAsFixed(1);
  }

//  Normal BMI range: 18.5 - 25kg/m2

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'Your BMI result is quite low, you shoult eat more!';
    }
  }
}
