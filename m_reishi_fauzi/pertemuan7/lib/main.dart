import 'package:flutter/material.dart';

void main() {
  runApp(const gantiWarnaApp());
}

class gantiWarnaApp extends StatefulWidget {
  const gantiWarnaApp({super.key});

  // This widget is the root of your application.
  @override
  State<gantiWarnaApp> createState() => _gantiWarnaAppState();
}

class _gantiWarnaAppState extends State<gantiWarnaApp> {
  bool _isBlue = true;

  void _ubahWarna() {
    setState(() {
      _isBlue = !_isBlue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _isBlue ? Colors.blue : Colors.red,
        appBar: AppBar(
          title: const Text('contoh stateful widget ubah warna'),
          backgroundColor: _isBlue ? Colors.blue : Colors.red,
          ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _isBlue ? "warna Biru" : "Warna Merah",
                style: TextStyle(
                  fontSize: 24, 
                  color: _isBlue ? Colors.blue : Colors.red,
                  fontWeight: FontWeight.bold,
                ),

              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _ubahWarna,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isBlue ? Colors.blue : Colors.red,
                ),

                child: const Text('ubah warna'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
