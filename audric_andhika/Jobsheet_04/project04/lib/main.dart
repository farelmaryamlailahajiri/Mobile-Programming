import 'package:flutter/material.dart';

void main() {
  runApp(const percobaan1());
}

class percobaan1 extends StatelessWidget {
  const percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "audric",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("audrics"),
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          titleTextStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Center(
                child: Text(
                  "BALONKU ADA 5\nCipt: audric",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 24),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Balonku ada 5\nRupa-rupa warnanya\nHijau, kuning, kelabu\nmerah, muda, dan Biru",
                ),
              ),

              const SizedBox(height: 20),

              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Meletus balon hijau",
                    ),
                    Text(
                      "DOOORRR 💥💥💥",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Hatiku sangat kacau\nBalonku tinggal 4\nKupegang erat-erat",
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