import 'package:flutter/material.dart';
import 'profile_page.dart';  
import 'counter_page.dart'; 

void main() {
  runApp(const MyProfileCounterApp());
}

class MyProfileCounterApp extends StatelessWidget {
  const MyProfileCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 5, 84, 120),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 45, 22, 1),
        ),
        useMaterial3: true,
      ),
      home: const MainAppStructure(),
    );
  }
}

class MainAppStructure extends StatefulWidget {
  const MainAppStructure({super.key});

  @override
  State<MainAppStructure> createState() => _MainAppStructureState();
}

class _MainAppStructureState extends State<MainAppStructure> {
  int _selectedIndex = 0;

  final GlobalKey<CounterPageState> _counterKey = GlobalKey();

  late final List<Widget> _pages;
  final List<String> _titles = const ['Profil Mahasiswa', 'Counter App'];

  _MainAppStructureState() {
    _pages = [
      const ProfilePage(),         
      CounterPage(key: _counterKey), 
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); 
  }

  @override
  Widget build(BuildContext context) {
    final Color appBarColor = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex], 
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
        ),
        backgroundColor: appBarColor,
        iconTheme: const IconThemeData(color: Colors.white), 
        actions: const [
          Icon(Icons.settings, color: Colors.white), 
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      
      body: _pages[_selectedIndex],

      floatingActionButton: _selectedIndex == 1 
          ? FloatingActionButton(
              onPressed: () {
                _counterKey.currentState?.tambah(); 
              },
              tooltip: 'Tambah Counter (FAB)',
              child: const Icon(Icons.add, color: Colors.white),
            )
          : null,

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: appBarColor),
              child: const Text(
                'Menu Utama Aplikasi',
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle, color: Color.fromARGB(255, 95, 51, 12)),
              title: const Text('Menu Profil'),
              selected: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              leading: const Icon(Icons.calculate, color: Color.fromARGB(255, 103, 52, 4)),
              title: const Text('Menu Counter'),
              selected: _selectedIndex == 1,
              onTap: () => _onItemTapped(1),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Counter',
          ),
        ],
        selectedItemColor: appBarColor,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}