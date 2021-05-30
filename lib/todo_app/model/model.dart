class TodoFields {
  static const createdTime = "createdTime";
}

class Todo {
  String? id;
  DateTime? createdTime;
  String? title;
  String? description;
  bool? isDone;

  Todo({
    this.id,
    this.createdTime,
    this.title,
    this.description,
    this.isDone,
  });
}
