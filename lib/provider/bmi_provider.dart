import 'package:flutter/foundation.dart';

import '../utils/gender.dart';

class BmiProvider extends ChangeNotifier {
  late Gender _selectedGender;
  double _height = 1.70; // Default height in meters
  double _weight = 70; // Default weight in kilograms
  double? _bmi;
  String _bmiCategory = "";

  Gender get selectedGender => _selectedGender;

  double get height => _height;

  double get weight => _weight;

  double? get bmi => _bmi;

  String get bmiCategory => _bmiCategory;

  // void setHeight(double value) {
  //   _height = value;
  //   _calculateBMI();
  //   notifyListeners();
  // }
  //
  // void setWeight(double value) {
  //   _weight = value;
  //   _calculateBMI();
  //   notifyListeners();
  // }

  void calculateBMI(double height, double weight) {
    _height = height;
    _weight = weight;

    if (_height > 0 && _weight > 0) {
      _bmi = _weight / (_height * _height);
      _setBMICategory();
    } else {
      _bmi = null;
      _bmiCategory = "Invalid input";
    }
    notifyListeners();
  }

  void _setBMICategory() {
    if (_bmi == null) {
      _bmiCategory = "Invalid input";
      return;
    }
    if (_bmi! < 18.5) {
      _bmiCategory = "Underweight";
    } else if (_bmi! < 24.9) {
      _bmiCategory = "Normal weight";
    } else if (_bmi! < 29.9) {
      _bmiCategory = "Overweight";
    } else {
      _bmiCategory = "Obese";
    }
  }

  // Call this initially if you want to calculate BMI with default values
  // BmiProvider() {
  //   _calculateBMI();
  // }

  //gender selection

  void handleGenderSelection(Gender gender) {
    _selectedGender = ((selectedGender == gender) ? null : gender)!;
    notifyListeners();
  }
}
