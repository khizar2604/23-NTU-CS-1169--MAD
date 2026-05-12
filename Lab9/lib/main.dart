import 'package:flutter/material.dart';

void main() {
  runApp(const Lab_9());
}

class Lab_9 extends StatelessWidget {
  const Lab_9({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lab_9',
      debugShowCheckedModeBanner: false,
      home: PromoCodeScreen(),
    );
  }
}

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SMT Cuisine Order')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 18.0),
        child: Column(
          children: const [
            Text('Customer Name'),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter customer name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PromoCodeScreen extends StatefulWidget {
  const PromoCodeScreen({super.key});

  @override
  State<PromoCodeScreen> createState() => _PromoCodeScreenState();
}

class _PromoCodeScreenState extends State<PromoCodeScreen> {
  String? errorText;
  String selectedSize = 'Small';

  final List<String> pizzaSizes = ['Small', 'Medium', 'Large', 'Party Size'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Promotional Code')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter promo code',
                border: OutlineInputBorder(),
                errorText: errorText,
              ),
              onChanged: (value) {
                setState(() {
                  if (value.contains(' ')) {
                    errorText = "Don't use blank spaces";
                  } else {
                    errorText = null;
                  }
                });
              },
            ),

            DropdownButton<String>(
              value: selectedSize,
              items: pizzaSizes.map((size) {
                return DropdownMenuItem(value: size, child: Text(size));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedSize = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
