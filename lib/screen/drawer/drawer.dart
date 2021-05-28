import 'package:flutter/material.dart';

class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Center(child: Text('Menu'))),
            ListTile(
              title: Text("Home Page"),
              leading: Icon(Icons.arrow_back),
            ),
            ListTile(
              title: Text("About Page"),
              leading: Icon(Icons.arrow_back),
            ),
            ListTile(
              title: Text("Contact Page"),
              leading: Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: TextButton(
            onPressed: () {},
            child: Text("MainPage"),
          ),
        ),
      ),
    );
  }
}
