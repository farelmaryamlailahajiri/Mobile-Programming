import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Import halaman-halaman yang akan kita buat
import 'profile_page.dart';
import 'counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 4. Bonus (Opsional): Buat warna tema custom
    // Menggunakan tema gelap dengan warna primer custom
    return MaterialApp(
      title: 'My Profile & Counter App',
      theme: ThemeData(
        // Tema dasar: gelap (dark)
        brightness: Brightness.light,
        // Warna primer custom
        primaryColor: const Color(0xFF004E98),
        colorScheme: ColorScheme.light(
          primary: const Color(0xFF004E98),
          secondary: const Color(0xFFC8E6C9), // Contoh: hijau muda
          surface: Colors.white,
        ),
        // 4. Bonus (Opsional): Gunakan Google Fonts untuk teks
        textTheme: GoogleFonts.merriweatherTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: Colors.white, displayColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

// 3. Navigasi Antar Halaman dengan BottomNavigationBar
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // Index untuk halaman yang sedang aktif

  // List halaman yang akan dinavigasi
  final List<Widget> _pages = [
    const ProfilePage(), // Menu Profil (StatelessWidget)
    const CounterPage(), // Menu Counter (StatefulWidget)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Tampilkan halaman yang dipilih
      body: _pages.elementAt(_selectedIndex),

      // Widget navigasi bawah
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Counter'),
        ],
        currentIndex: _selectedIndex, // Indeks yang sedang aktif
        selectedItemColor: Theme.of(
          context,
        ).colorScheme.secondary, // Warna item yang dipilih
        onTap: _onItemTapped, // Fungsi saat item diklik
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
