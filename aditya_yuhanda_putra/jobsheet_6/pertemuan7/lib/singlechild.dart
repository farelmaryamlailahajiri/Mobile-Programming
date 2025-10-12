import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SingleChildPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single Child Layout Example', style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello Flutter! I am using SingleChild Layout',
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