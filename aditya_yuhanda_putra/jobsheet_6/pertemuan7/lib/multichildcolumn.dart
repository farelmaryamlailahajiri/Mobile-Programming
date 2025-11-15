import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MultiChildColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MultiChild Column Layout Example', style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello Flutter! I am using MultiChild Column Layout',
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('ini baris kedua'),
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Text('ini baris di dalam container'),
            ),
            Text('ini baris ketiga'),
            Container(
              color: Colors.pink,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Text('ini baris di dalam container'),
            ),
            Text('ini baris keempat'),
            const SizedBox(height: 20),
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