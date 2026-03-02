import 'package:flutter/material.dart';

void main() {
  runApp(const Lab3());
}

class Lab3 extends StatelessWidget {
  const Lab3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lab 3",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Task2();
  }
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 2 – Padding & Margin"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.orange.shade300,
                padding: const EdgeInsets.all(35.0),
                child: const Text(
                  "Padding: all(35.0)",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 30),

              Container(
                color: Colors.teal.shade300,
                margin: const EdgeInsets.symmetric(
                  vertical: 70.0,
                  horizontal: 25.0,
                ),
                padding: const EdgeInsets.all(15),
                child: const Text(
                  "Margin: vertical(70), horizontal(25)",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              Container(
                color: Colors.yellow.shade300,
                padding: const EdgeInsets.only(
                  left: 25.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: const Text(
                  "Padding: only(left: 25, top: 10, bottom: 10)",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
