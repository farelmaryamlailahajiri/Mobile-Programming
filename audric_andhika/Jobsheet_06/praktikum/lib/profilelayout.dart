import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilLayout());
}

class ProfilLayout extends StatelessWidget {
  const ProfilLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Profil Layout')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://emojigraph.org/media/social/sweat-droplets_1f4a6.png'),
            ),
            SizedBox(height: 10),
            Text(
              'Audric Andhika',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Professional Player',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}