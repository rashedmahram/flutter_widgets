import 'package:flutter/material.dart';
import 'package:flutter_widgets/todo_app/widgets/todo_list_item_widget.dart';

import '../model/model.dart';

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
