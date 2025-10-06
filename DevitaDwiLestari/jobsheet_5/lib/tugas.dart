import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

final ThemeData myTheme = ThemeData(
  primarySwatch: Colors.teal,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.teal,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.teal,
  ),
  textTheme: GoogleFonts.poppinsTextTheme(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

// Navigasi antar halaman
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    ProfilPage(),
    CounterPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Counter"),
        ],
      ),
    );
  }
}

// Halaman Profil
class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil Mahasiswa")),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.teal[50], 
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              const FlutterLogo(size: 80),
              const SizedBox(height: 16),

              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/foto.jpg"),
              ),
              const SizedBox(height: 16),

              Text("Devita Dwi Lestari", style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold)),
              Text("NIM: 2341760002", style: GoogleFonts.poppins(fontSize: 18)),
              Text("Jurusan: Teknologi Informasi", style: GoogleFonts.poppins(fontSize: 18)),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.email, color: Colors.teal),
                  SizedBox(width: 8),
                  Text("doremivita@gmail.com"),
                  SizedBox(width: 20),
                  Icon(Icons.phone, color: Colors.teal),
                  SizedBox(width: 8),
                  Text("+62 815 1591 2833"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Halaman Counter
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _increment() => setState(() => _counter++);
  void _decrement() => setState(() => _counter--);
  void _reset() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App")),
      body: Center(
        child: Container(
          color: Colors.teal[50], 
          padding: const EdgeInsets.all(20), 
          margin: const EdgeInsets.all(10), 
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Angka Saat Ini:",
                  style: GoogleFonts.poppins(fontSize: 20)),
              const SizedBox(height: 8),
              Text("$_counter",
                  style: GoogleFonts.poppins(
                      fontSize: 48, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: _increment, child: const Text("+")),
                  const SizedBox(width: 8),
                  ElevatedButton(onPressed: _decrement, child: const Text("-")),
                  const SizedBox(width: 8),
                  OutlinedButton(onPressed: _reset, child: const Text("Reset")),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
