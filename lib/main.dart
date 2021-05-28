import 'package:flutter/material.dart';

import 'widgets/grid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      home: Scaffold(
        body: SafeArea(
          child: GridLayout(),
        ),
      ),
    );
  }
}
