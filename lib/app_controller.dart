import 'package:flutter/material.dart';

class AppController extends ChangeNotifier{
  static AppController instance = AppController();
  bool isDarkTheme = false;
  changTheme(){
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
