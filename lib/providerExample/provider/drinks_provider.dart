import 'package:flutter/material.dart';

import '../models/drink.dart';

class DrinksProvider extends ChangeNotifier {
  List<Drink> _drinks = [
    Drink("Water", false),
    Drink("Cuba Libre", false),
    Drink("Pina Colada", false),
    Drink("Havana Cola", false),
  ];
  void selectDrink(Drink drink, bool seleceted) {
    _drinks.firstWhere((element) => element.name == drink.name).selected = seleceted;
    notifyListeners();
  }

  List<Drink> get selectedDrinks {
    return _drinks.where((element) => element.selected).toList();
  }

  List<Drink> get drinks => _drinks;
}
