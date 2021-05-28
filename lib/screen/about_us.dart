import 'package:flutter/material.dart';
import 'package:flutter_widgets/screen/statefull_widget.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amberAccent,
          child: TextButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),
                );
              },
              child: Text("Main Page")),
        ),
      ),
    );
  }
}
