import 'package:flutter/material.dart';

void main() {
  runApp(ListViewExample());
}

class ListViewExample extends StatelessWidget {
  final List<String> items = ['Flutter', 'Dart', 'Firebase', 'UI/UX', 'API'];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This trailing comma makes auto-formatting nicer for build methods.
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView Example')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.code),
              title: Text(items[index]),
              onTap: () => print('Klik: ${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
