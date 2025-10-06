import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gegas',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gegas Anugrah", style: TextStyle(color: Colors.yellowAccent, fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.greenAccent,
        ),
        body: Container(
          child: Column(
            children: [
              const Center(
                child: Text("BALONKU ADA 5 \nCipt: Prabroro", 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              ),

              SizedBox(
                height: 24,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Balonku Ada 5 \nRupa-rupa warnanya \nHijau, kuning, kelabu \nMerah muda, dan biru"),
              ),
              SizedBox(
                height: 24,
              ),

              const Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: const [
                    Text("Meletus balon hijau"),
                    Text("DORRRRR!!!!!🧨🧨🧨", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red)),
                    Text("Hatiku sangat kacau \nBalonku tinggal 4 \nKupegang erat-erat"),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}