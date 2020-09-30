import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain(this.height, this.weight) {
    _bmi = weight / pow((height / 100), 2);
  }

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40) {
      return 'Very severely obese';
    } else if (_bmi >= 35) {
      return 'Severely obese';
    } else if (_bmi >= 30) {
      return 'Moderately obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else if (_bmi >= 16) {
      return 'Underweight';
    } else if (_bmi >= 15) {
      return 'Severely underweight';
    } else {
      return 'Very severely underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Great job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
