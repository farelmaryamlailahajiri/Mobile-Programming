import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aditya Yuhanda Putra',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Aditya Yuhanda Putra',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
              ),
            ),
          ),
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.black,
        ),
        body: const Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "\n\nBalonku ada lima\nCiptaan A.T Mahmud\n",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),

              Padding(
                padding: EdgeInsets.all(19.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Balonku ada lima\nRupa-rupa warnanya\nHijau, kuning, kelabu\nMerah muda dan biru\n",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Meletus balon hijau",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "DORRRR!",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Hatiku sangat kacau\nBalonku tinggal empat\nKupegang erat-erat",
                        style: TextStyle(fontSize: 20),
                      ),
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
