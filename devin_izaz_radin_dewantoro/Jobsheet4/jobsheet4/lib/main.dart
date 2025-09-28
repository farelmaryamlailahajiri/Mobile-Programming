import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Devin I'zaz Radin Dewantoro",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mata Kuliah Devin I'zaz Radin Dewantoro",
            style: TextStyle(fontSize: 17, fontFamily: 'Times New Roman'),
          ),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
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