import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Task1());
  }
}

class Task1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Container(
          width: 250,
          height: 250,
          margin: EdgeInsets.all(25.0),
          padding: EdgeInsets.symmetric(vertical: 15.0),
          color: Colors.white,
          child: Center(child: Text('Safe Container')),
        ),
      ),
    );
  }
}
