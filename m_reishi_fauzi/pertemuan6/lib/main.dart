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
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.account_circle, size: 32),
              Text('Belajar Flutter', style: TextStyle(fontSize: 16)),
              Text('FAUZI', style: TextStyle(fontSize: 12)),

              FlutterLogo(
                size: 32,
                style: FlutterLogoStyle.horizontal,
                textColor: Colors.white,
              ),
              Image.asset('assets/gambar/logopolinema.png', height: 32),
            ],
          ),
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
        body: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          height: 200,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.greenAccent, Colors.grey],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Hello, World!', style: TextStyle(fontSize: 24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star_half, color: Colors.amber),
                  Icon(Icons.star_border, color: Colors.amber),
                ],
              ),
            ],
          ),
        ),

        //FLOATING ACTION BUTTON
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
