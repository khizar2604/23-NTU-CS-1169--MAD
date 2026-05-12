import 'package:flutter/material.dart';

// ─── Entry Point ──────────────────────────────────────────────────
void main() {
  runApp(MaterialApp(
    title: 'Passing Data Demo',
    home: TodosScreen(),
  ));
}

// ─── Data Model ───────────────────────────────────────────────────
// Todo is a plain Dart class that holds two pieces of data.
// It has no UI — it is purely a data blueprint.
class Todo {
  final String title;
  final String description;

  // Named constructor: both fields are required at creation time
  Todo({required this.title, required this.description});
}

// ─── Sample Data ──────────────────────────────────────────────────
// A top-level list of Todo objects, accessible from any screen.
final List<Todo> todos = [
  Todo(title: 'Buy Groceries',   description: 'Milk, eggs, bread, and butter'),
  Todo(title: 'Study Flutter',   description: 'Complete the navigation lab tasks'),
  Todo(title: 'Call the Doctor', description: 'Schedule a checkup appointment'),
  Todo(title: 'Fix the Bug',     description: 'Resolve the null pointer on login screen'),
  Todo(title: 'Read a Book',     description: 'Finish chapter 5 of Clean Code'),
];

// ─── Screen 1: List of Todos ──────────────────────────────────────
class TodosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,         // tells Flutter how many rows to build
        itemBuilder: (context, index) {  // called once per visible row
          return ListTile(
            title: Text(todos[index].title),
            // onTap fires when the user taps this specific row
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // todos[index] is the exact Todo the user tapped
                  // It is passed directly into DetailScreen's constructor
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

// ─── Screen 2: Detail View ────────────────────────────────────────
class DetailScreen extends StatelessWidget {
  // This screen owns a reference to the Todo it received
  final Todo todo;

  // Constructor: whoever creates this screen must supply a Todo
  DetailScreen({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
        // AppBar automatically provides a back arrow → Navigator.pop()
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),  // 16px space on all sides
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // left-align text
          children: [
            // Display the todo's title in large bold text
            Text(
              todo.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12), // vertical spacing between title and description
            // Display the todo's description in regular text
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