import 'package:flutter/material.dart';
import 'package:flutter_widgets/todo_app/contstans.dart';
import 'package:flutter_widgets/todo_app/widgets/add_dialog_widget.dart';
import 'package:flutter_widgets/todo_app/widgets/todo_list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabse = [
      TodoListWidgets(),
      Container(),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        bottomNavigationBar: buildBottomNavigationBar(context),
        body: tabse[selectedIndex],
        floatingActionButton: buildFloatingActionButton(context));
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AddTodoDialogWidget(),
      ),
      child: Icon(Icons.add),
      backgroundColor: kAccentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.white.withOpacity(0.7),
      selectedItemColor: Colors.white,
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.fact_check_outlined),
          label: "ToDo List",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.done, size: 28),
          label: "Complated",
        )
      ],
    );
  }
}
