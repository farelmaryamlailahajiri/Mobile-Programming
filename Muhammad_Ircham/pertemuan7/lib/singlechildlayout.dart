import 'package:flutter/material.dart';

void main() {
  runApp(const SingleChildExample());
}

class SingleChildExample extends StatelessWidget {
  const SingleChildExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Single Child Layout Example'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text(
            'Hello Flutter!',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}