import 'package:flutter/material.dart';

void main() {
  runApp(const Sib3aApp());
}

class Sib3aApp extends StatelessWidget {
  const Sib3aApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIB 3A - Alvi Choirinnikmah',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Scaffold & AppBar"),
          backgroundColor: Colors.teal,
          actions: const [
            Icon(Icons.search), // ikon di kanan
            Icon(Icons.settings),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(leading: Icon(Icons.message), title: Text('Messages')),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // digunakan untuk mengatur posisi vertikal
            crossAxisAlignment: CrossAxisAlignment.center, // digunakan untuk mengatur posisi horizontal
            children: const [
              Text("Baris 1"),
              Text("Baris 2"),
              Text("Baris 3"),
              SizedBox(height: 10), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const[
                  Icon(Icons.home, size: 40),
                  Icon(Icons.star, size: 40),
                  Icon(Icons.settings, size: 40),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}