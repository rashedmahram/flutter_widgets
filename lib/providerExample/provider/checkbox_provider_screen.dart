import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../models/drink.dart';
import '../widgets/drinks_widget.dart';
import 'drinks_provider.dart';

class CheckboxProviderScreen extends StatefulWidget {
  @override
  _CheckboxProviderScreenState createState() => _CheckboxProviderScreenState();
}

class _CheckboxProviderScreenState extends State<CheckboxProviderScreen> {
  final List<Drink> drinks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cocktail Order"),
      ),
      body: Container(
        decoration: kMainBackgroundImage,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: kWhiteBackground,
              child: Consumer<DrinksProvider>(
                builder: (context, drinksProvider, child) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Drinks tonight",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    ...drinksProvider.drinks
                        .map(
                          (drink) => DrinksWidget(
                            drink: drink,
                            onChanged: (value) {
                              drinksProvider.selectDrink(drink, value);
                            },
                          ),
                        )
                        .toList(),
                    Text(
                      "The order is: ",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) => ListTile(
                          title: Text(
                            drinksProvider.selectedDrinks[index].name,
                          ),
                        ),
                        itemCount: drinksProvider.selectedDrinks.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}