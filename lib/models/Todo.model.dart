
class Todo {

  final String name;
  final String desc;

  Todo({
    this.name,
    this.desc,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      name: json['name'],
      desc: json['desc']
    );
  }
}