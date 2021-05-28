import 'package:flutter/material.dart';

class GradientContaier extends StatelessWidget {
  const GradientContaier({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.41;

    return Container(
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.1,
              0.4,
              0.6,
              0.9,
            ],
            colors: [
              Color(0xfff45B3E0),
              Colors.red,
              Colors.indigo,
              Colors.teal,
            ],
          ),
        ));
  }
}
