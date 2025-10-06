import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter R FAUZI'),
          backgroundColor: Colors.lime,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // aksi ketika tombol search ditekan
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // aksi ketika tombol menu ditekan
              },
            ),
          ],
        ),
        body: Text('hallo, semua', style: TextStyle(fontSize: 24)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'ini tombol tambah',
          child: const Icon(Icons.add),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.lime),
                child: Text(
                  'Menu Drawer',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Messages'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Profile'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {},
              ),
            ],
          ),
        ),
        //BOTTOM NAVIGATION BAR
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.lime,
          onTap: (index) {
            // aksi ketika item ditekan
          },
        ),
      ),
    );
  }
}
