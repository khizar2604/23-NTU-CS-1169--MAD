import "package:flutter/material.dart";

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Task1()));
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 1"), backgroundColor: Colors.teal),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                color: Colors.green.shade100,
                elevation: 6,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.handshake, color: Colors.deepPurple, size: 35),
                      Icon(Icons.savings, color: Colors.amber, size: 55),
                      Icon(Icons.favorite, color: Colors.pink, size: 45),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.cyan.shade100,
                elevation: 12,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(Icons.star, color: Colors.indigo, size: 65),
                      SizedBox(height: 15),
                      Icon(Icons.bolt, color: Colors.redAccent, size: 45),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.yellow.shade100,
                elevation: 16,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.music_note, color: Colors.blueGrey, size: 50),
                      Icon(Icons.movie, color: Colors.brown, size: 40),
                      Icon(Icons.camera, color: Colors.teal, size: 60),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
