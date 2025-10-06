import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bayu Triwibowo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Balonku Ada Lima ",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.red,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // penting!
            children: [
              const Text(
                " Balonku Ada Lima \n Cipt: Pak Kasur",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Rata kiri
              const Text(
                "Balonku Ada Lima \nRupa-rupa warnanya \nHijau kuning kelabu \nMerah muda dan biru \nMeletus balon hijau",
                textAlign: TextAlign.left,
              ),

              // Tengah
              const Text(
                "Dorrr...!!!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.red,
                ),
              ),

              // Rata kanan
              const Text(
                "Balonku tinggal empat \nKupegang erat-erat",
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
