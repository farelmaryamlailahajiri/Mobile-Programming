import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mata Kuluah Satria Rakhmadani",
      home: Scaffold(
        appBar: AppBar(
            title: Text(
            "Satria Rakhmadani",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.yellow,
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.topLeft,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text("Balonku Ada Lima"),
                    Text("A.T. Mahmud"),
                  ],
                )
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Text("Balonku ada lima \nRupa-rupa warnanya \nHijau, kuning, kelabu \nMerah muda dan biru"),
                  ],
                )
              ),
              Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: [
                    Text("Meletus balon hijau \nDOOOOR.... \nHatiku sangat kacau \nBalonku tinggal empat \nKupegang erat-erat"),
                    Text("Meletus balon hijau \nDOOOOR.... \nHatiku sangat kacau \nBalonku tinggal empat \nKupegang erat-erat"),
                  ],
                )
              ),
            ],
          ),  
        ),
      ),
    );
  }
}