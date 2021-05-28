import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 3,
              children: List.generate(30, (index) {
                return Text("$index");
              }),
            ),
          ],
        ),
      ),
    );
  }
}
