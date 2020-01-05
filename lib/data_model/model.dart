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

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }
}
