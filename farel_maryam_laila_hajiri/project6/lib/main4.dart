import 'package:flutter/material.dart';

void main() {
  runApp(const sib3a());
}

class sib3a extends StatelessWidget {
  const sib3a({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('contoh listview')),
        body: ListView(
          children: [
            ListTile(title: Text('Item1'), leading: Icon(Icons.star)),
            ListTile(title: Text('Item2'), leading: Icon(Icons.favorite)),
            ListTile(title: Text('Item3'), leading: Icon(Icons.home)),
          ],
        ),
      ),
    );
  }
}
