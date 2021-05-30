import 'package:flutter/material.dart';

import '../model/model.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;

  const TodoWidget({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String descriptions = todo.description!;
    bool check = todo.description!.isNotEmpty;
    print(check);
    String title = todo.title.toString();
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: Checkbox(
            value: true, //todo.isDone,
            activeColor: Theme.of(context).primaryColor,
            checkColor: Colors.white,
            onChanged: (context) {},
            tristate: true,
          ),
        ),
        Expanded(
          flex: 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
              ),
              Text(
                "descriptions",
              ),
            ],
          ),
        )
      ],
    );
  }
}
