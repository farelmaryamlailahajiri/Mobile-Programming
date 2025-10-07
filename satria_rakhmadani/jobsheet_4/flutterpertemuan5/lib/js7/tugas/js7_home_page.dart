import 'package:flutter/material.dart';
import 'js7_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Selamat datang!\nPilih halaman yang ingin dibuka',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                icon: const Icon(Icons.person),
                label: const Text('Profil Mahasiswa'),
                onPressed: () => Navigator.pushNamed(context, Routes.profile),
              ),
              const SizedBox(height: 12),
              ElevatedButton.icon(
                icon: const Icon(Icons.photo_library),
                label: const Text('Galeri'),
                onPressed: () => Navigator.pushNamed(context, Routes.gallery),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
