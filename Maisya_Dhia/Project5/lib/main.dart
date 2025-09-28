import 'package:flutter/material.dart';

void main() {
  runApp(const Project5());
}

class Project5 extends StatelessWidget {
  const Project5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MAI",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "BALONKU ADA 5",
            style: TextStyle(
              fontSize: 65,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 249, 249, 249),
          foregroundColor: Colors.grey,
        ),
        body: Align(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "BALONKU ADA LIMA\nCipt.A. T. Mahmud",
                textAlign: TextAlign.center,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Balonku ada lima\nRupa-rupa warnanya\nHijau kuning kelabu\nMerah muda dan biru",
                  textAlign: TextAlign.left,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Meletus balon hijau\n"),
                      TextSpan(
                        text: "DOR..!!!\n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                          text:
                              "Hatiku sangat kacau\nBalonku tinggal empat\nKupegang erat-erat"),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}













