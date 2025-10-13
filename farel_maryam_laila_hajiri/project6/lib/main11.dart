import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// 1. Definisikan router di luar main, atau di dalam main
final _router = GoRouter(
  routes: [
    GoRoute(
      // Path: /
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      // Path: /about
      path: '/about',
      builder: (context, state) => const AboutPage(),
    ),
  ],
);

void main() {
  // 2. Langsung jalankan MaterialApp.router sebagai root widget
  runApp(const MyApp());
}

// Widget utama yang menggunakan GoRouter
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // Konfigurasi router yang sudah dibuat
      routerConfig: _router,
      title: 'Aplikasi GoRouter Sederhana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

// Halaman Utama
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Utama')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Menggunakan context.go() untuk navigasi
            context.go('/about');
          },
          child: const Text('Ke Halaman About'),
        ),
      ),
    );
  }
}

// Halaman About
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman About')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Ini adalah Halaman About',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Menggunakan context.go() untuk kembali ke Home
                context.go('/');
              },
              child: const Text('Kembali ke Halaman Utama'),
            ),
          ],
        ),
      ),
    );
  }
}