import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  // daftar halaman
  final List<Widget> _pages = [const ProfilePage(), const CounterPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            _selectedIndex == 0 ? 'Profil Mahasiswa' : 'Counter App',
            style: const TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.lime,
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),

        body: _pages[_selectedIndex],

        floatingActionButton: _selectedIndex == 1
            ? FloatingActionButton(
                onPressed: () {
                  // trigger tambah angka dari halaman counter
                  CounterPage.counterKey.currentState?.increment();
                },
                tooltip: 'Tambah Angka',
                child: const Icon(Icons.add),
              )
            : null,

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
                leading: const Icon(Icons.account_circle),
                title: const Text('Profile'),
                onTap: () => _onItemTapped(0),
              ),
              ListTile(
                leading: const Icon(Icons.calculate),
                title: const Text('Counter'),
                onTap: () => _onItemTapped(1),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
              icon: Icon(Icons.countertops),
              label: 'Counter',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.lime,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

// ========================
// HALAMAN PROFIL (Stateless)
// ========================
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
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
        children: [
          const FlutterLogo(size: 20),
          const SizedBox(height: 10),
          Image.asset('assets/gambar/profil.png', height: 100),
          const SizedBox(height: 10),
          const Text(
            'Nama: Fauzi',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text('NIM: 12345678', style: TextStyle(fontSize: 16)),
          const Text(
            'Jurusan: Sistem Informasi',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.email, color: Colors.blue),
              SizedBox(width: 5),
              Text('fauzi@example.com'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.phone, color: Colors.green),
              SizedBox(width: 5),
              Text('+62 812-3456-7890'),
            ],
          ),
        ],
      ),
    );
  }
}

// ========================
// HALAMAN COUNTER (Stateful)
// ========================
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  static final GlobalKey<_CounterPageState> counterKey =
      GlobalKey<_CounterPageState>();

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    setState(() {
      _counter--;
    });
  }

  void reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$_counter', style: const TextStyle(fontSize: 40)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: increment, child: const Text('+')),
              const SizedBox(width: 10),
              ElevatedButton(onPressed: decrement, child: const Text('-')),
              const SizedBox(width: 10),
              OutlinedButton(onPressed: reset, child: const Text('Reset')),
            ],
          ),
        ],
      ),
    );
  }
}
