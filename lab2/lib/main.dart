import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Task4());
  }
}

class Task4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // start from top
        children: [
          // 🔵 Blue Header Container
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Header',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),

          SizedBox(height: 20), // 20px space
          // 🔴🟢 Row with Red & Green containers
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 🔴 Red Box
              Container(
                width: 100,
                height: 80,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Button 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              // 🟢 Green Box
              Container(
                width: 100,
                height: 80,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Button 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
