import 'package:flutter/material.dart';

void main() {
  runApp(const GantiWarnaApp());
}

class GantiWarnaApp extends StatefulWidget {
  const GantiWarnaApp({super.key});
    
  @override
  State<GantiWarnaApp> createState() => _GantiWarnaAppState();
}

class _GantiWarnaAppState extends State<GantiWarnaApp>{
  bool _isBlue = true; //state untuk menentukan warna & teks

  void _ubahWarna(){ //fungsi untuk mengubah warna & teks
    setState(() {
      _isBlue = !_isBlue; //ubah nilai boolean
    });
  }
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: _isBlue ? Colors.blue [100]: Colors.pink[100], 
      appBar: AppBar(
        title: const Text('Aplikasi Ganti Warna'),
        backgroundColor: _isBlue ? Colors.blue : Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _isBlue ? 'Warna Biru' : 'Warna Pink',
              style: TextStyle(
                fontSize: 24,
                color: _isBlue ? Colors.blue [900] : Colors.pink[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _ubahWarna,
              style: ElevatedButton.styleFrom(
                backgroundColor: _isBlue ? Colors.blue : Colors.pink,
              ),
              child: const Text('Ganti Warna'),
            ),
          ],
        ),
      ),
    ),
  );
}
}
