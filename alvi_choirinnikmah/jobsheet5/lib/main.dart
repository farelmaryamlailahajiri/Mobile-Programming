import 'package:flutter/material.dart';

void main() {
  runApp(const Sib3aApp());
}

class Sib3aApp extends StatelessWidget {
  const Sib3aApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIB 3A - Alvi Choirinnikmah',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Scaffold & AppBar"),
          backgroundColor: Colors.teal,
          actions: const [
            Icon(Icons.search), // ikon di kanan
            Icon(Icons.settings),
          ],
        ),
        body: const Center(
          child: Text("Hello Flutter ini jobsheet 5 - Scaffold & AppBar"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}