import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lovelyta",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Lovelyta Sekarayu",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 2,
              shadows: [
                Shadow(
                  blurRadius: 8,
                  color: Colors.black26,
                  offset: Offset(3, 3),
                ),
              ],
            ),
          ),
          backgroundColor: const Color.fromARGB(
            255,
            202,
            17,
            125,
          ), //background color
          foregroundColor: const Color.fromARGB(
            255,
            166,
            233,
            213,
          ), //font color
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Balonku\nCipt:aaaaa", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: Colors.black26,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                ),
              Text(
                "Balonku ada 5\nRupa-rupa warnanya\nHijau kuning kelabu\nMerah muda dan biru",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: Colors.black26,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
              Text(
                "Meletus balon hijau",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: Colors.black26,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
              Text(
                "DOR!", 
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: const Color.fromARGB(255, 5, 159, 5),
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                ),
              Text(
                "Hatiku sangat kacau\nBalonku tinggal 4\nKupegang erat-erat",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: Colors.black26,
                      offset: Offset(3, 3),
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