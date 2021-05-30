import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'contstans.dart';
import 'core/provider/todos.dart';
import 'screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomePage(),
        theme: ThemeData(
          primaryColor: kPrimaryColor,
        ),
      ),
    );
  }
}
