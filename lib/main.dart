import 'package:flutter/material.dart';

import 'screen/statefull_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      home: Scaffold(
        body: SafeArea(
          child: MainPage(),
        ),
      ),
    );
  }
}
