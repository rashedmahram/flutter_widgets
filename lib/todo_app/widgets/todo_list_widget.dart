import 'package:flutter/material.dart';

import '../model/model.dart';
import 'todo_list_item_widget.dart';

class TodoListWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TodoWidget(
        todo: Todo(
          createdTime: DateTime.now(),
          title: 'Walk the Doge',
          description: "- Clear every thing",
        ),
      ),
    );
  }
}
