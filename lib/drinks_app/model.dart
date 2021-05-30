import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int value = 0;
  late DateTime now = DateTime.now();
  List drinks = [];

  void getTime() {
    now = DateTime.now();
    notifyListeners();
  }

  void increment() {
    value++;
    notifyListeners();
  }
}
