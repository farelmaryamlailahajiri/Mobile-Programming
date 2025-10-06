import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  final List<String> items = ['Flutter', 'Dart', 'Firebase', 'UI/UX', 'API'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListView Example')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.label),
              title: Text(items[index]),
              onTap: () => print('Klik: ${items[index]}'),
            );
          },
        ),
    );
  }
}