import 'package:flutter/material.dart';
import 'package:flutter_widgets/screen/statefull_widget.dart';

class Articles extends StatelessWidget {
  Map article;

  Articles({this.article});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 5,
              child: Text(article['auther']),
            ),
            Expanded(
              flex: 5,
              child: Text(article['title']),
            ),
            Expanded(
              flex: 50,
              child: Text(article['content']),
            ),
            Expanded(
              flex: 10,
              child: Text(article['createdDate']),
            ),
            Expanded(
              flex: 10,
              child: TextButton(
                  onPressed: () {
                    Map article = {
                      'auther': "Rasheed Muharram",
                      "title": 'Intro To Flutter',
                      'content':
                          'These routes must be predefined. Although you can pass arguments to a named route, you can’t parse arguments from the route itself. For example, if the app is run on the web, you can’t parse the ID from a route like',
                      "createdDate": '02/03/2039',
                    };

                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage(),
                      ),
                    );
                  },
                  child: Text("Home")),
            )
          ],
        ),
      ),
    );
  }
}
