import 'package:flutter/material.dart';

void main() {
  runApp(const GantiWarnaApp());
}

class GantiWarnaApp extends StatefulWidget {
  const GantiWarnaApp({super.key});

  @override
  State<GantiWarnaApp> createState() => _GantiWarnaAppState();
}

class _GantiWarnaAppState extends State<GantiWarnaApp> {
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
        // ganti background sesuai kondisi
        backgroundColor: _isBlue ? Colors.blue[100] : Colors.grey[900],
        
       
        appBar: AppBar(
          title: const Text('Ganti Warna'),
          backgroundColor: _isBlue ? Colors.blue : Colors.black, 
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _isBlue ? 'Iki biru' : 'Iki hitam',
                style: TextStyle(
                  fontSize: 30,
                  color: _isBlue ? Colors.blue[900] : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _ubahWarna,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isBlue ? Colors.blue : Colors.black,
                ),
                child: const Text('Ubah'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
