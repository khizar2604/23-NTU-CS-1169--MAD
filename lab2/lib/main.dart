import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Task2());
  }
}

class Task2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(title: Text("Task 2"), centerTitle: true),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.favorite, size: 50, color: Colors.red),

            SizedBox(height: 60),

            Icon(Icons.thumb_up, size: 50, color: Colors.blue),

            Icon(Icons.share, size: 50, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
