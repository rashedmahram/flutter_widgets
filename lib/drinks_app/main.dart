import 'package:flutter/material.dart';
import 'model.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider<Counter>(
        create: (context) => Counter(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myCounter = Provider.of<Counter>(context);
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: myCounter.getTime,
          child: Text("+"),
        ),
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                child: Consumer<Counter>(
                  builder: (context, counter, child) => Text("Home page ${myCounter.value}\n "),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
