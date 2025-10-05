import 'package:flutter/material.dart';

void main() {
  runApp(const sib3a());
}

class sib3a extends StatelessWidget {
  const sib3a({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', 
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
          'Flutternya Lovelyta',
          style: TextStyle(fontSize: 24, color: Colors.teal),
          ), 
        backgroundColor: Colors.lime,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings), Icon(Icons.search)
        ],
        ),
        body: Text('Hello, World!', style: TextStyle(fontSize: 24)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'ini tombol',
          child: const Icon(Icons.add), 
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu Drawer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('Contact Us'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
