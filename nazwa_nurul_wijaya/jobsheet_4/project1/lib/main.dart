import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Nazwa Nurul Wijaya',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 600), // Responsif
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Balonku Ada Lima\nCipt: A.T. Mahmud",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Balonku ada 5"),
                      Text("Rupa-rupa warnanya"),
                      Text("Hijau, Kuning, Kelabu"),
                      Text("Merah Muda dan Biru"),
                    ],
                  ),
                ),
                SizedBox(height: 20), 
                Align(
                  alignment: Alignment.centerRight, 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Text("Meletus balon hijau"),
                      Text(
                        "DORRR...",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      Text("Hatiku sangat kacau"),
                      Text("Balonku tinggal 4"),
                      Text("Kupegang erat-erat"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}