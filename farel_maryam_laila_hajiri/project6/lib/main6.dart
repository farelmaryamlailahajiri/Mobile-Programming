import 'package:flutter/material.dart';

void main() {
  runApp(const sib3a());
}

class sib3a extends StatelessWidget {
  const sib3a({super.key});

  // Daftar item yang akan ditampilkan
  final List<String> items = const ['Flutter', 'Dart', 'Firebase', 'UI/UX', 'API'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView Example')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.code),
              title: Text(items[index]),
              onTap: () => print('Klik: ${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
