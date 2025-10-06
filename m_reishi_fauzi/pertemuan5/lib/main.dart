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
        body: Align(
          //alignment: AlignmentGeometry.topLeft,
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text(
                      'balonku ada lima',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('-Reishi Fauzi-'),
                  ],
                ),
              ),

              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'balonku ada lima\nrupa-rupa warnanya\nhijau, kuning, kelabu\nmerah mudah dan biru',
                ),
              ),

              Align(
                alignment: Alignment.topRight,
                child: IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('meletus balon hijau,'),

                      Container(
                        color: Colors.redAccent,
                        padding: const EdgeInsets.all(6),
                        child: const Text(
                          'DOORRR!!!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      const Text(
                        'hatiku sangat kacau\nbalonku tinggal empat\nkupegang erat erat',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
