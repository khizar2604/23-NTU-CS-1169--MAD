import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('National Textile University')),
        backgroundColor: const Color.fromARGB(255, 159, 93, 17),
      ),
      body: Center(child: Text('Khizar', style: TextStyle(fontSize: 24))),
    );
  }
}
