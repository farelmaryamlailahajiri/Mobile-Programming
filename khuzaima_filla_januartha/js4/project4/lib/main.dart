import 'package:flutter/material.dart';

void main() {
  runApp(const percobaan1());
}

class percobaan1 extends StatelessWidget{
  const percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "I Love Ruby",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cowonya Bella"),
          backgroundColor: Colors.pinkAccent,
          foregroundColor: Colors.white,
          titleTextStyle: const TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
            ),
            centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Center(
                child: Text("\nBALONKU ADA 5 \nCipt. NN", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),),

              ),
              const SizedBox(height: 20,),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Balonku Ada 5\nRupa - Rupa Warnanya\nHijau Kuning Kelabu\nMerah Muda dan Biru", style: TextStyle(fontSize: 16, color: Colors.black, ),),
              ),
              const SizedBox(height: 20,),
              const Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: const[
                    Text("Meletus Balon Hijau"),
                    Text("DOOR", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.pinkAccent, backgroundColor: Colors.yellow),),
                    Text("Hatiku Sangat Kacau\nBalonku Tinggal 4\nKupegang Erat - Erat"),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}