import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ListComponent(
        todos: List.generate(20, (i) => Todo(
          'Todo $i',
          'Description for Todo $i'
        ))
      ),
    );
  }
}

class ListComponent extends StatelessWidget {

  final List<Todo> todos;
  final _biggerFont = const TextStyle(fontSize: 18.0);

  ListComponent({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo'),
      ),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailComponent(todo: todos[index]),
                  )
              );
            },
          );
        }
    );
  }
}

class DetailComponent extends StatelessWidget {

  final Todo todo;

  DetailComponent({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(todo.title)
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(todo.description),
        )
    );
  }
}