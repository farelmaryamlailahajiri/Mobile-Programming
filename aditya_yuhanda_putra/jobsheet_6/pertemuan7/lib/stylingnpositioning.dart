import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StylingAndPositioning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styling and Positioning Example', style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.lightBlueAccent,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.white,
              child: Text(
                'This is a centered text with white background',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ],
      ), floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/');
        },
        child: Icon(Icons.home),
      ),  
    );
  }
}