import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            //jika menggunakan column maka subtitle akan berada di bawah tulisan flutternya haura, jika menggunakan row, maka tulisan subtitle berada di samping tulisan flutternya haura
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.account_circle,
                size: 48,
                color: Colors.white,
              ), //icon bisa ditambahkan karena didalam array
              const Text(
                'Flutter Deva',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const Text(
                'Subtitle',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              const FlutterLogo(
                size: 48,
                style: FlutterLogoStyle.horizontal,
                textColor: Colors.white,
              ),
              Image.asset('assets/logo.jpg', width: 48, height: 48),
            ],
          ),
          backgroundColor: Colors.purple,
          // leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.search), Icon(Icons.settings)],
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          // color: Colors.red,
          height: 250,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.purple, Colors.deepPurple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            // color: Colors.blue,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 23, 23, 23),
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('You have ...'),
              const Row(
                //jika menggunakan row, maka bintang bintangnya menyamping, jika menggunakan column maka bintang bintangnya berjajar kebawh
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star_half, color: Colors.amber),
                  Icon(Icons.star_border, color: Colors.amber),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Klik here')),
              TextButton(
                onPressed: () {
                  print('Text button pressed');
                },
                child: const Text(
                  'Text Button',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Klik here',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              IconButton(
                onPressed: () {
                  print('Icon button pressed');
                },
                icon: const Icon(Icons.favorite, color: Colors.red),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, //untuk memberi action next or back or something
          tooltip: 'ini tombol',
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
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
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
        ),
      ),
    );
  }
}