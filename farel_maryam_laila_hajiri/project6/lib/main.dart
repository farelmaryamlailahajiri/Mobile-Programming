import 'package:flutter/material.dart';

void main() {
  runApp(const sib3a());
}

class sib3a extends StatefulWidget {
  const sib3a({super.key});

  @override
  State<sib3a> createState() => _sib3aState();
}

class _sib3aState extends State<sib3a> {
  bool _isBlue = true; // State untuk menentukan warna dan teks

  void _ubahWarna() {
    setState(() {
      _isBlue = !_isBlue; // ubah nilai state
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _isBlue ? Colors.blue[100] : Colors.pink[100],
        appBar: AppBar(
          title: const Text('Contoh stateful: Ubah warna'),
          backgroundColor: _isBlue ? Colors.blue : Colors.pink,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _isBlue ? 'Warna biru' : 'Warna merah muda',
                style: TextStyle(
                  fontSize: 24,
                  color: _isBlue ? Colors.blue[900] : Colors.pink[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _ubahWarna,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isBlue ? Colors.blue : Colors.pink,
                ),
                child: const Text('Ubah warna'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
