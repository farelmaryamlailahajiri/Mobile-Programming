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
          title:  Text('Single Child Layout Example'),
          backgroundColor: Colors.blue,
        ),
        body:  Center(
          child: Text(
            'Helo Flutter!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}