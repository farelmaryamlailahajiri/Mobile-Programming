import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({Key? key}) : super(key: key);
  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  // ganti warna latar belakang
  bool _isBlue = true;
  void _ubahWarna() {
    setState(() {
      _isBlue = !_isBlue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Page', style: TextStyle(fontSize: 24)),
        backgroundColor: _isBlue ? Colors.blue : Colors.pink,
        foregroundColor: Colors.white,
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
            ElevatedButton(onPressed: _ubahWarna, child: Text('Ubah warna')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: Text('Go to Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
