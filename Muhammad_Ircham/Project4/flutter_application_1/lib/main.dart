import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Balonku ada lima',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Muhammad Ircham',
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian rata kiri
              Text("Balonku ada lima",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text("Rupa-rupa warnanya", style: TextStyle(fontSize: 20)),
              Text("Hijau, kuning, kelabu", style: TextStyle(fontSize: 20)),
              Text("Merah muda dan biru", style: TextStyle(fontSize: 20)),
              SizedBox(height: 12),

              // Bagian rata tengah
              Center(
                child: Column(
                  children: [
                    Text("Meletus balon hijau *DOR*",
                        style: TextStyle(fontSize: 20, color: Colors.red)),
                    Text("Hatiku sangat kacau", style: TextStyle(fontSize: 20)),
                    Text("Balonku tinggal empat", style: TextStyle(fontSize: 20)),
                    Text("Kupegang erat-erat", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}