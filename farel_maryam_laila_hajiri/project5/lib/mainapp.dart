import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Import halaman-halaman
import 'pages/profile_page.dart';
import 'pages/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 🎨 Tema formal: Navy Blue & Soft Gold
    final customTheme = ThemeData(
      colorScheme:
          ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
            accentColor: const Color(0xFFD4AF37), // soft gold
            backgroundColor: Colors.white,
            brightness: Brightness.light,
          ).copyWith(
            primary: const Color(0xFF0D47A1), // biru navy lebih modern
            secondary: const Color(0xFFD4AF37),
          ),
      textTheme: GoogleFonts.poppinsTextTheme(),
      useMaterial3: true,
    );

    return MaterialApp(
      title: 'Profile & Counter App',
      theme: customTheme,
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = const <Widget>[
    ProfilePage(),
    CounterPage(),
  ];

  final List<String> _titles = const <String>['Profile', 'Counter'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Drawer item sekarang menerima parameter textColor
  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Function() onTap,
    Color textColor = Colors.black87, // default teks gelap
  }) {
    final accentColor = Theme.of(context).colorScheme.secondary;
    return ListTile(
      leading: Icon(icon, color: accentColor),
      title: Text(
        title,
        style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    final accentColor = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles[_selectedIndex],
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ), // hamburger icon putih
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      drawer: Drawer(
        backgroundColor: Colors.white, // ✅ drawer background putih
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: primaryColor,
              ), // header tetap navy
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle, size: 60, color: accentColor),
                  const SizedBox(width: 10),
                  Text(
                    'Main Menu',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(
              context,
              icon: Icons.person,
              title: 'Profile',
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            _buildDrawerItem(
              context,
              icon: Icons.calculate,
              title: 'Counter',
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            const Divider(color: Colors.grey),
            _buildDrawerItem(
              context,
              icon: Icons.settings,
              title: 'Settings',
              onTap: () {},
            ),
            _buildDrawerItem(
              context,
              icon: Icons.info_outline,
              title: 'About',
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Counter',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: accentColor, // soft gold untuk yang dipilih
        unselectedItemColor: Colors.white, // putih untuk yang belum dipilih
        backgroundColor: primaryColor, // navy background
        onTap: _onItemTapped,
        type: BottomNavigationBarType
            .fixed, // supaya warna unselectedItemColor diterapkan
      ),
    );
  }
}
