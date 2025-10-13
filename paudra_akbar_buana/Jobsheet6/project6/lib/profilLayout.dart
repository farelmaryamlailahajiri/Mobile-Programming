import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilLayout());
}

class ProfilLayout extends StatelessWidget {
  const ProfilLayout({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This trailing comma makes auto-formatting nicer for build methods.
      home: Scaffold(
        appBar: AppBar(title: const Text('Profil Layout')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://picsum.photos/200/300'),
            ),
            SizedBox(height: 10),
            Text(
              'Paudra Akbar Buana',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Flutter Developer',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
