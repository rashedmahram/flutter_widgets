import 'package:flutter/material.dart';
import 'package:flutter_widgets/todo_app/widgets/todo_form_widget.dart';

class AddTodoDialogWidget extends StatefulWidget {
  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Add ToDo",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(height: 12),
          TodoFormWidget(
            onChangeTitle: (title) {
              setState(() {
                this.title = title;
              });
            },
            onChangeDescription: (description) {
              setState(() {
                this.description = description;
              });
            },
            onSavedTodo: () {},
            title: '',
          ),
        ],
      ),
    );
  }
}
