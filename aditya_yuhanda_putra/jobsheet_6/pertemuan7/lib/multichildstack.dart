import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MultiChildStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MultiChild Stack Layout Example',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 400, height: 100, color: Colors.amber),
            Container(width: 300, height: 200, color: Colors.pink),
            Text(
              'Hello Flutter! I am using MultiChild Stack Layout',
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue[900],
                fontWeight: FontWeight.bold,
              ),
            ),
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
