import 'package:flutter/material.dart';

void main() {
  runApp(const sib3a());
}

class sib3a extends StatelessWidget {
  const sib3a({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Styling dan Positioning',
      debugShowCheckedModeBanner: false,
      home: const StylingExample(),
    );
  }
}

class StylingExample extends StatelessWidget {
  const StylingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Styling dan Positioning'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          // Latar belakang berwarna biru muda
          Container(
            color: Colors.lightBlueAccent,
          ),

          // Widget yang ditempatkan di tengah layar
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: const Text(
                'Tengah Layar',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
