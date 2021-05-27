import 'package:flutter/material.dart';

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

class MainPage extends StatefulWidget {
  const MainPage({
    Key key,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color color = Colors.black.withOpacity(0.12);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 18,
          child: Container(
            padding: EdgeInsets.all(22),
            color: color,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text("Logo"),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    color = Colors.green[400];
                  });
                },
                child: Text("Green"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(1.91),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    color = Colors.yellow[400];
                  });
                },
                child: Text("yellow"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.yellow[400],
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(1.91),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    color = Colors.red[400];
                  });
                },
                child: Text("Red"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.red[400],
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(1.91),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
