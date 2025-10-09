import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListViewPage extends StatelessWidget {
  final List<String> items = ['Cihuy', 'Cihuyy', 'Cihuyyy', 'Cihuyyyy'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example', style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.code),
                  title: Text(items[index]),
                  onTap: () => print('You tapped on ${items[index]}'),
                );
              },
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
    );
  }
}
