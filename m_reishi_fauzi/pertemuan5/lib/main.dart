import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fauzi pertama direcokin hamdan',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'project flutter pertama Fauzi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          backgroundColor: Colors.cyanAccent,
          foregroundColor: Colors.deepPurple,
        ),
        body: const Align(
          //alignment: AlignmentGeometry.topLeft,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'balonku ada lima\nReishi Fauzi',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              Align(
                alignment: AlignmentGeometry.topLeft,
                child: Text(
                  'balonku ada lima\nrupa-rupa warnanya\nhijau, kuning, kelabu\nmerah mudah dan biru',
                ),
              ),

              Align(
                alignment: AlignmentGeometry.topRight,
                child: Text(
                  'meletus balon hijau,\nDOORRR!!!\nhatiku sangat kacau\nbalonku tinggal empat\nkupegang erat erat',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
