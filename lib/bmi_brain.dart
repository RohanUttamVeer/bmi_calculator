import 'dart:math';

class CalBrain {
  CalBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi = 0;
//create a function calBMI
  String calBMI() {
    _bmi = weight / pow(height / 100, 2);
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

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Go Workout!';
    } else if (_bmi > 18.5) {
      return 'You\'re Fine';
    } else {
      return 'Eat More';
    }
  }
}
