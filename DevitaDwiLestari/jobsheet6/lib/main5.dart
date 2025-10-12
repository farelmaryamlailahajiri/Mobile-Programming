import 'package:flutter/material.dart';

void main() {
  runApp(ListVIewExample());
}

class ListVIewExample extends StatelessWidget {
  const ListVIewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh ListView')),
        body: ListView(
          children: [
            ListTile(title: Text('Item 1'), leading: Icon(Icons.star),),
            ListTile(title: Text('Item 2'), leading: Icon(Icons.favorite),),
            ListTile(title: Text('Item 3'), leading: Icon(Icons.home),),
          ],
        ),
      ),
    );
  }
} 