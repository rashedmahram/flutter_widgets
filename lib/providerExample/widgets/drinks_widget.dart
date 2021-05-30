import 'package:flutter/material.dart';

import '../models/drink.dart';

class DrinksWidget extends StatelessWidget {
  final Drink drink;
  final Function onChanged;

  const DrinksWidget({Key? key, required this.drink, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: drink.selected,
          // BUG: give me error i cant understand it ...
          onChanged: onChanged,
        ),
        Text(drink.name)
      ],
    );
  }
}
