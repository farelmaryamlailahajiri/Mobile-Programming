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
                fontStyle: FontStyle.italic),
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

              // Bagian kiri
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Balonku ada Lima",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.normal)),
                    Text("Rupa-rupa warnanya",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.normal)),
                    Text("Hijau, Kuning, Kelabu",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.normal)),
                    Text("Merah muda dan biru",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.normal)),
                    Text("Meletus balon hijau",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.normal)),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Bagian kanan
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("DORRR!",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("Hatiku sangat kacau",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.normal)),
                    Text("Balonku tinggal empat",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.normal)),
                    Text("Kupegang erat-erat",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.normal)),
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