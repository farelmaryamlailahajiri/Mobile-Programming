import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Josephine",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Josephine Antonia",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(
                  blurRadius: 10,
                  color: Colors.black45,
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "BALONKU ADA 5",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Cipt. A.T. Mahmud",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 40), 
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Balonku ada 5\n"
                  "Rupa-rupa warnanya\n"
                  "Hijau, kuning, kelabu\n"
                  "Merah muda, dan biru",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.topRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // rata kiri
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "Meletus balon hijau",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "DORRR",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Hatiku sangat kacau\n"
                      "Balonku tinggal 4\n"
                      "Kupegang erat-erat",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
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
