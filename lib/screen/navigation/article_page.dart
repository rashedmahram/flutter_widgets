import 'package:flutter/material.dart';

import '../statefull_widget.dart';

class Articles extends StatelessWidget {
  final Map article;

  Articles({required this.article});
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
