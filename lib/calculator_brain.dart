import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  double calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult() {
    if (_bmi <= 18.5) {
      return "Underweight";
    } else if (_bmi > 18.5 && _bmi < 25.0) {
      return "Normal";
    } else if (_bmi >= 25.0 && _bmi < 30.0) {
      return "Overweight";
    } else {
      return "Obesity";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.0) {
      return "You have a higher than normal body weight, Try to exercise more.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}
