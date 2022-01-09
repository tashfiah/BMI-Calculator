import 'dart:math';

class CalculationLogic {
  CalculationLogic({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getAdvice() {
    if (_bmi >= 25) {
      return 'Try to Exercise.';
    } else if (_bmi >= 18.5) {
      return 'Good Job!';
    } else {
      return 'You can eat a bit more.';
    }
  }
}
