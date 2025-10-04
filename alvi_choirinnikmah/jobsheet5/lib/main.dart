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
          title: const Text("Ini AppBar"),
          backgroundColor: Colors.blue,
          leading: const Icon(Icons.menu), // ikon di kiri 
          actions: const [
            Icon(Icons.search), // ikon di kanan
            Icon(Icons.more_vert),
          ],
        ),
        body: const Center(
          child: Text("Hello Flutter"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}