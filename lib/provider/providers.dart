import 'package:flutter/material.dart';

class BottomIndex extends ChangeNotifier {
  int currentIndex = 0;

  void changeIndex(value) {
    currentIndex = value;
    notifyListeners();
  }
}
