import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/checkbox_provider_screen.dart';
import 'provider/drinks_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider tutorial - Flutter Explained',
      theme: ThemeData.light().copyWith(primaryColor: Color(0xFFe13133)),
      home: ChangeNotifierProvider(
        create: (_) => DrinksProvider(),
        child: CheckboxProviderScreen(),
      ),
    );
  }
}
