import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatelessApp());
}

class MyStatelessApp extends StatelessWidget {
  const MyStatelessApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This trailing comma makes auto-formatting nicer for build methods.
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Stateless Widget'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            'Halo, saya adalah Stateless Widget!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
