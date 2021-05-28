import 'package:flutter/material.dart';

import '../grid.dart';

// ignore: must_be_immutable
class ContainerLayout extends StatelessWidget {
  ContainerLayout({
    Key? key,
  }) : super(key: key);

  double padding = 16;
  double margin = 10;

  @override
  Widget build(BuildContext context) {
    // !Container: Adds padding, margins, borders, background color, or other decorations to a widget.
    // ? padding [X]
    // ? margins [X]
    // ? background color [X]
    // ? decorations [ ]
    double height = MediaQuery.of(context).size.height * 0.21;
    double width = MediaQuery.of(context).size.width * 0.3;

    return Container(
      margin: EdgeInsets.only(top: margin),
      padding: EdgeInsets.all(padding),
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(150),
        image: DecorationImage(
          image: NetworkImage("https://source.unsplash.com/random"),
          fit: BoxFit.fill,
        ),
        border: Border.all(
          color: Colors.white10,
          width: 8,
        ),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => GridLayout(),
            ),
          );
        },
        child: Text(
          "Next Container Example",
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
