import 'package:flutter/material.dart';

class SelectedProvider extends ChangeNotifier {
  int selectedPage;
  int selectedOption;
  int selectedStep;

  SelectedProvider(
      {this.selectedPage = 0, this.selectedOption = 0, this.selectedStep = 0});

  void changePage(int newVal) {
    selectedPage = newVal;
    notifyListeners();
  }

  void changeOption(int newVal) {
    selectedOption = newVal;
    notifyListeners();
  }

  void changeStep(int newVal) {
    selectedStep = newVal;
    notifyListeners();
  }
}
