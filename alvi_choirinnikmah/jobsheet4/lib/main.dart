import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alvi Choirinnikmah - Flutter Demo',
      home: Scaffold(
        // Tumpukan AppBar dan body
        appBar: AppBar(
          title: Text(
            'Alvi Choirinnikmah',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lob',
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue, // latar belakang biru
          foregroundColor: Colors.white, // teks berwarna putih
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            // Bagian teks rata kiri
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lirik Balonku Ada Lima - Lagu anak-anak',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial',
                  ),
                  textAlign: TextAlign.left,
                ),

                Text(
                  'Balonku ada 5 \nRupa-rupa warnanya \nHijau, kuning, kelabu \nMerah muda dan biru \n',
                  style: TextStyle(fontSize: 20, fontFamily: 'Arial'),
                  textAlign: TextAlign.left,
                ),

                // Bagian teks rata kanan
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Meletus balon hijau \nHatiku sangat kacau',
                        style: TextStyle(fontSize: 20, fontFamily: 'Arial'),
                      ),

                      Text(
                        'Dorrr........................',
                        style: TextStyle(fontSize: 20, fontFamily: 'Arial'),
                      ),

                      Text(
                        'Hatiku sangat kacau \nBalonku tinggal 4 \nKupenggang erat-erat',
                        style: TextStyle(fontSize: 20, fontFamily: 'Arial'),
                      ),
                    ], // children
                  ),
                ),
              ], // children
            ),
          ),
        ),
      ),
    );
  }
}
