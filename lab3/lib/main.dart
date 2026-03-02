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
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Task3();
  }
}

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Task 3 – Profile Image",
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: Colors.deepOrange,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.amber.shade200,
              child: const Icon(
                Icons.account_circle,
                color: Colors.deepPurple,
                size: 28,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade100,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Network Profile Image:",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),

                const SizedBox(height: 30),

                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.pink.shade100,
                  backgroundImage: const NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                  ),
                  onBackgroundImageError: (exception, stackTrace) {
                    debugPrint("Image loading failed.");
                  },
                  child: const Icon(Icons.face, size: 80, color: Colors.white),
                ),

                const SizedBox(height: 30),

                const Text(
                  "(Profile shown in AppBar top-right)",
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
