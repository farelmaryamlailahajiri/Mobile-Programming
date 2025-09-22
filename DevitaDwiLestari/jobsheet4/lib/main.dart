import 'package:flutter/material.dart';

void main() {
 runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devita Dwi Lestari - Flutter Demo',
      home: Scaffold( // tumpukan AppBar dan body
        appBar: AppBar(
          title: Text('Devita Dwi Lestari', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, fontFamily: 'Lobster'),),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,

        ),
         body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start, 
            children: [
              Align(
                alignment: Alignment.center,
                child: Text('Balonku Ada Lima\nA.T. Mahmud', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Balonku ada 5"),
                    Text("Rupa-rupa warnanya"),
                    Text("Merah, Kuning, Kelabu"),
                    Text("Merah muda dan biru"),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Meletus balon hijau"),
                    Text("DORRR!!",style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold,),),
                    Text("Hatiku sangat kacau"),
                    Text("Balonku tinggal 4"),
                    Text("Kupegang erat-erat"),
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