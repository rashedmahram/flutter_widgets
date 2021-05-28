import 'package:flutter/material.dart';
import 'package:flutter_widgets/screen/about_us.dart';

import 'article_page.dart';
import 'contact.dart';

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
        Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutUs(),
                        ),
                      );
                    },
                    child: Text("About Us")),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Contacts(),
                        ),
                      );
                    },
                    child: Text("Contact Us")),
                TextButton(
                    onPressed: () {
                      Map article = {
                        'auther': "Rasheed Muharram",
                        "title": 'Intro To Flutter',
                        'content':
                            'These routes must be predefined. Although you can pass arguments to a named route, you can’t parse arguments from the route itself. For example, if the app is run on the web, you can’t parse the ID from a route like',
                        "createdDate": '02/03/2039',
                      };

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Articles(
                            article: article,
                          ),
                        ),
                      );
                    },
                    child: Text("Article")),
              ],
            ))
      ],
    );
  }
}
