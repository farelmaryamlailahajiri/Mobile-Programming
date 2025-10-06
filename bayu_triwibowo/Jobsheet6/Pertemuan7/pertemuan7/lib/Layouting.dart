import 'package:flutter/material.dart';

void main() {
  runApp(SingleChildExample());
}

// SingleChildLayout
class SingleChildExample extends StatelessWidget {
  const SingleChildExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Single Child Layout Example' ),
          
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text(
            'Hello Bayu Triwibowo',
            style: TextStyle(fontSize: 25, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        
          ),
        ),
      ),
    );
  }
} 

