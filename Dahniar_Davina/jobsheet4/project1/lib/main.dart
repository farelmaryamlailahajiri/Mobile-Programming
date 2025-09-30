import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dahniar",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "DAHNIAR DAVINA",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lob',
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 202, 17, 125),
          foregroundColor: const Color.fromARGB(255, 166, 233, 213),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "LIHAT KEBUNKU",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Cipt : Ibu Sud\n",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                // Bagian lirik rata kiri
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lihat Kebunku,\n"
                        "Penuh dengan bunga",
                        style: const TextStyle(fontSize: 20, fontFamily: 'Arial'),
                      ),
                      Text("Ada yang Kuning", style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.yellow)),
                      Text("Dan ada yang Merah", style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.red)),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Bagian lirik rata kanan
                Align(
                   alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Setiap hari,\n"
                        "Kusiram semua\n"
                        "Mawar Melati,\n"
                        "Semuanya Indah!",
                        style: const TextStyle(fontSize: 20, fontFamily: 'Arial'),
                      ),
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
