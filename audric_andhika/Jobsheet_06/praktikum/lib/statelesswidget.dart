import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatelessWidget());
}

class MyStatelessWidget extends StatelessWidget { 
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Stateless Widget'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            'Halo, saya Stateless widget!',
            style: TextStyle(fontSize: 20),
            ),
        ),
      ),
    );
  }
}