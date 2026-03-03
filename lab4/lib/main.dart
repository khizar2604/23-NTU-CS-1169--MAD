import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header: Avatar
            Container(
              margin: const EdgeInsets.all(20.0),
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/pic.jpeg'),
              ),
            ),

            // Name
            const Text(
              "Khizar Hameed",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            // Title
            const Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        "Web Application",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        "Data Science",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
