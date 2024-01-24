import 'package:flutter/material.dart';

class AttendenceProvider extends ChangeNotifier {
  bool isVal = false;
  String selectedStartDate = '21/01/2024';
  String selectedEndDate = '21/01/2024';
  TextEditingController dateController = TextEditingController();

  void isDate() {
    if (isVal == true) {
      isVal = false;
    } else {
      isVal = true;
    }
    notifyListeners();
  }

  void showDate() {
    dateController.text = '$selectedStartDate to $selectedEndDate';
    notifyListeners();
  }

  selectStartDate(dynamic val) {
    selectedStartDate = val;
    debugPrint(selectedStartDate);
    notifyListeners();
  }

  selectEndDate(dynamic val) {
    selectedEndDate = val;
    debugPrint(selectedEndDate);
    notifyListeners();
  }
}
