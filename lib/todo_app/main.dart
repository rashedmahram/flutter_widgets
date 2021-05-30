import 'package:flutter/material.dart';
import 'package:flutter_widgets/todo_app/contstans.dart';
import 'package:flutter_widgets/todo_app/screen/home_screen.dart';
import 'package:flutter_widgets/todo_app/core/provider/todos.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomePage(),
        theme: ThemeData(
          primaryColor: kPrimaryColor,
        ),
      ),
    );
  }
}
