import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Gridview extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example', style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Text('ini baris di dalam container'),
            ),
            Container(
              color: Colors.pink,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Text('ini baris di dalam container'),
            ),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Text('ini baris di dalam container'),
            ),
            Text('ini baris kedua'),
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