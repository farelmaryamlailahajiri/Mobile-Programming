import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewExample());
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This trailing comma makes auto-formatting nicer for build methods.
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh ListView')),
        body: ListView(
          children: [
            ListTile(title: Text('Item 1'), leading: const Icon(Icons.star)),
            ListTile(
              title: Text('Item 2'),
              leading: const Icon(Icons.favorite),
            ),
            ListTile(title: Text('Item 3'), leading: const Icon(Icons.home)),
          ],
        ),
      ),
    );
  }
}
