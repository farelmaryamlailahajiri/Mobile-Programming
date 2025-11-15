import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Multichildlistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MultiChild ListView Layout Example',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: Text('Item 1'), leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Item 2'), leading: Icon(Icons.favorite),
            ),
            ListTile(
              title: Text('Item 3'), leading: Icon(Icons.home),
            ),
            Text(
              'Hello Flutter! I am using MultiChild ListView Layout',
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