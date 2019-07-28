import 'package:flutter/material.dart';


class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class SendDataToNewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TodosScreen(
      todos: List.generate(20, (i) => Todo(
        'Todo $i',
        'A description of what needs to be done for Todo $i',
      )),
    );
  }

}

class TodosScreen extends StatelessWidget{
  final List<Todo> todos;

  TodosScreen({Key key, @required this.todos})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todos')),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            final todo = todos[index];
            return ListTile(
              title: Text(todo.title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(todo: todo),
                  ),
                );
              },
            );
          }
      ),
    );
  }
}


class DetailScreen extends StatelessWidget {
  final Todo todo;

  DetailScreen({Key key, @required this.todo})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(todo.title)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }

}