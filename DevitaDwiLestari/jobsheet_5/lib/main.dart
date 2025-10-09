import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Scaffold & AppBar"),
        backgroundColor: Colors.teal,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.settings),
          SizedBox(width: 10),
        ],
      ),

      // Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),

      // Body
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto profil
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/foto.jpg"),
              ),
              const SizedBox(height: 16),

              // Ikon bintang
              const Icon(Icons.star, color: Colors.orange, size: 50),
              const SizedBox(height: 16),

              // Container dengan alignment
              Container(
                width: 200,
                height: 100,
                color: Colors.orange,
                alignment: Alignment.bottomRight,
                child: const Text("Sudut kanan bawah"),
              ),
              const SizedBox(height: 16),

              // ElevatedButton
              ElevatedButton(
                onPressed: () {
                  debugPrint("Elevated Button ditekan!");
                },
                child: const Text("Elevated Button"),
              ),
              const SizedBox(height: 8),

              // TextButton
              TextButton(
                onPressed: () {
                  debugPrint("Text Button ditekan!");
                },
                child: const Text("Text Button"),
              ),
            ],
          ),
        ),
      ),

      // FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Floating Action Button ditekan!");
        },
        child: const Icon(Icons.add),
      ),

      // BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), label: 'School'),
        ],
      ),
    );
  }
}