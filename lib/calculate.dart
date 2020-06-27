import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});

  final height;
  final weight;

  double _bmi;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getRes() {
    if (_bmi <= 15) {
      return "Very Severly Underweight";
    } else if (15 < _bmi && _bmi <= 16) {
      return "Severly Underweight";
    } else if (16 < _bmi && _bmi <= 18.5) {
      return "Underweight";
    } else if (18.5 < _bmi && _bmi <= 25) {
      return "Normal";
    } else if (25 < _bmi && _bmi <= 35) {
      return "Overweight";
    } else if (35 < _bmi && _bmi <= 45) {
      return "Severly Overweight";
    } else {
      return "Very Severly Overweight";
    }
  }

  getDesc() {
    if (_bmi <= 15) {
      return "No Words (*_*)";
    } else if (15 < _bmi && _bmi <= 16) {
      return "Do You Live in Desert?";
    } else if (16 < _bmi && _bmi <= 18.5) {
      return "You Should eat Much More than You Do Now";
    } else if (18.5 < _bmi && _bmi <= 25) {
      return "Good Job. Don't Add or Remove anything from you Diete!";
    } else if (25 < _bmi && _bmi <= 35) {
      return "You Should Eat Less";
    } else if (35 < _bmi && _bmi <= 45) {
      return "Is The Anything Else You Do Other than Eating?";
    } else {
      return "IDK, How EARTH is Tolerating You with THIS Weight";
    }
  }
}
