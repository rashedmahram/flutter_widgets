import 'package:flutter/material.dart';

import '../contstans.dart';

class TodoFormWidget extends StatelessWidget {
  final String title;
  final String? description;

  final ValueChanged<String>? onChangeTitle;
  final ValueChanged<String>? onChangeDescription;
  final VoidCallback? onSavedTodo;
  const TodoFormWidget({this.description, required this.title, this.onChangeDescription, this.onChangeTitle, this.onSavedTodo});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildTitle(),
          SizedBox(height: 8),
          buildDescription(),
          SizedBox(height: 8),
          buildSaveButton(),
        ],
      ),
    );
  }

  SizedBox buildSaveButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kAccentColor),
        ),
        child: Text("Save"),
      ),
    );
  }

  TextFormField buildTitle() {
    return TextFormField(
      initialValue: title,
      maxLines: 1,
      validator: (title) {
        if (title!.isEmpty) {
          return 'The title cannot be empty';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: "Title",
      ),
    );
  }

  TextFormField buildDescription() {
    return TextFormField(
      onChanged: onChangeDescription,
      initialValue: description,
      maxLines: 5,
      validator: (description) {
        if (description!.isEmpty) {
          return 'The description cannot be empty';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: "description",
      ),
    );
  }
}
