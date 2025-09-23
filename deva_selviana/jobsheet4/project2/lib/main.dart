import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deva Selviana',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Deva Selviana",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Judul di tengah
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Balonku Ada Lima \na.t mahmud",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),

              // Bagian kiri (justify)
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Balonku ada Lima",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 25)),
                    Text("Rupa-rupa warnanya",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 25)),
                    Text("Hijau, Kuning, Kelabu",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 25)),
                    Text("Merah muda dan biru",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 25)),
                    Text("Meletus balon hijau",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 25)),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Bagian kanan (justify)
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("DORRR!",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("Hatiku sangat kacau",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 25)),
                    Text("Balonku tinggal empat",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 25)),
                    Text("Kupegang erat-erat",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 25)),
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