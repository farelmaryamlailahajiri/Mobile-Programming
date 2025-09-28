import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Devin I'zaz Radin Dewantoro",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mata Kuliah Devin I'zaz Radin Dewantoro",
            style: TextStyle(fontSize: 17, fontFamily: 'Times New Roman'),
          ),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: const Align(
          alignment: AlignmentGeometry.topCenter,
          child: Column(
            children: [
              Text('data'),
              Align(
                alignment: AlignmentGeometry.topLeft,
                child: Column(children: [
                      
                  ],
                ),
              ),

              Align(
                alignment: AlignmentGeometry.topLeft,
                child: Column(children: [
                    
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
