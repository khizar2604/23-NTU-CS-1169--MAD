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
      body: Center(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar
              Container(
                margin: const EdgeInsets.all(20.0),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/pic.jpeg'),
                ),
              ),

              // Name
              Text(
                "Khizar Hameed",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 8),

              // Title
              Text(
                "Flutter Developer",
                style: TextStyle(fontSize: 16, color: Colors.amber),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
