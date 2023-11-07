import 'package:flutter/material.dart';

class SelectedProvider extends ChangeNotifier {
  int selectedPage;
  int selectedOption;

  SelectedProvider({
    this.selectedPage = 0,
    this.selectedOption = 0,
  });

  void changePage(int newVal) {
    selectedPage = newVal;
    notifyListeners();
  }

  void changeOption(int newVal) {
    selectedOption = newVal;
    notifyListeners();
  }
}
