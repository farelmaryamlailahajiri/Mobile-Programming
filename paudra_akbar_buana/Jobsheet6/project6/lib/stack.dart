import 'package:flutter/material.dart';

void main() {
  runApp(StackExample());
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This trailing comma makes auto-formatting nicer for build methods.
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh Stack')),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(color: Colors.blue[100], height: 200, width: 200),
              Container(color: Colors.red[300], height: 200, width: 200),
              Text(
                'Tumpuk!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
