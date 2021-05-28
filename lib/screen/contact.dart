import 'package:flutter/material.dart';
import 'package:flutter_widgets/screen/statefull_widget.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          child: TextButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => MainPage(),
                ),
              );
            },
            child: Text("Main Page"),
          ),
        ),
      ),
    );
  }
}
