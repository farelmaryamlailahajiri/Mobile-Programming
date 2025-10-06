import 'package:flutter/material.dart';

void main() {
  runApp(const ColumnExample());
}

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Column'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ini baris pertama'),
            const Text('Ini baris kedua'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Tombol'),
            ),
          ],
        ),
      ),
    );
  }
}
