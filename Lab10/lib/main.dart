import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    title: 'Passing Data Demo',
    home: TodosScreen(),
  ));
}

class Todo {
  final String title;
  final String description;

  Todo({required this.title, required this.description});
}

final List<Todo> todos = [
  Todo(title: 'Buy Groceries',   description: 'Milk, eggs, bread, and butter'),
  Todo(title: 'Study Flutter',   description: 'Complete the navigation lab tasks'),
  Todo(title: 'Call the Doctor', description: 'Schedule a checkup appointment'),
];

class TodosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;

  DetailScreen({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12), 
            Text(
              todo.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}