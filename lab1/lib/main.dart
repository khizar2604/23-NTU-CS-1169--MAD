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
        backgroundColor: const Color.fromARGB(255, 195, 125, 21),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Item 1'), SizedBox(width: 20), Text('Item 2')],
          ),

          SizedBox(height: 20),

          Text(
            'Khizar',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20),

          Image.asset('assets/images/mzht.jfif', width: 350, height: 250),

          SizedBox(height: 20),

          Image.network(
            'https://images.stockcake.com/public/4/0/3/4035579d-5ff2-427f-95df-a2956753e51d_large/ethereal-purple-flower-stockcake.jpg',
            width: 150,
            height: 150,
          ),
        ],
      ),
    );
  }
}
