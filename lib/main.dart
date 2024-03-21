import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek Menu',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Gojek'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Your Favorite',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Action when Edit button is pressed
                  },
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                _buildMenuItem(Icons.directions_bike, 'GoRide'),
                _buildMenuItem(Icons.directions_car, 'GoCar'),
                _buildMenuItem(Icons.food_bank, 'GoFood'),
                _buildMenuItem(Icons.motorcycle, 'GoSend'),
                _buildMenuItem(Icons.shopping_cart, 'GoMart'),
                _buildMenuItem(Icons.phone_android, 'GoPulsa'),
                _buildMenuItem(Icons.check_circle, 'Check In'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return InkWell(
      onTap: () {
        // Add your action here
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40),
          const SizedBox(height: 10),
          Text(label),
        ],
      ),
    );
  }
}