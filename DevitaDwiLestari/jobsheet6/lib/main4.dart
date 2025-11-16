import 'package:flutter/material.dart';

void main() {
  runApp(StackExample());
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh Stack')),
          body: Center(
            child: Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue[100],
                ),
                Text(
                  'Tumpuk',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
      ),
    );
  }
}