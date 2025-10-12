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
        appBar: AppBar(title: Text('Contoh column')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ini baris pertama'),
            Text('Ini baris kedua'),
            ElevatedButton(onPressed: () {}, child: Text('Tombol')),
          ],
        ),
      ),
    );
  }
}
