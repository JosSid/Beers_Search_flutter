import 'package:flutter/material.dart';

class BeersListProvider extends ChangeNotifier {
  String searchValue = '';

  void onValueChange(String value) {
    searchValue = value;
    notifyListeners();
  }
}