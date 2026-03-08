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

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isFollowed = false;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/pic.jpeg'),
              ),
            ),

            const Text(
              "Khizar Hameed",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            const Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 20),

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

                const SizedBox(width: 10),

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

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isFollowed = !isFollowed;
                    });
                  },
                  child: Text(isFollowed ? "Following" : "Follow"),
                ),

                const SizedBox(width: 20),

                IconButton(
                  onPressed: () {
                    setState(() {
                      score++;
                    });
                  },
                  icon: const Icon(Icons.thumb_up),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 5,
              margin: const EdgeInsets.all(20),
              child: ListTile(
                leading: const Icon(Icons.star, color: Colors.amber),
                title: const Text("Profile Score"),
                subtitle: Text("Score: $score"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
