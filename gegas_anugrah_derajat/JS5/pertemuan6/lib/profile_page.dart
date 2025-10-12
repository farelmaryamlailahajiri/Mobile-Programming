import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        color: Colors.blue[50],
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 100),
              const SizedBox(height: 20),
              
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blueAccent, width: 3),
                ),
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/profile.jpg'),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Placeholder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Nama: Gegas Anugrah Derajat',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'NIM: 2341760140',
                style: TextStyle(fontSize: 18),
              ),
              const Text(
                'Jurusan: Teknologi Informasi',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.email, color: Colors.blueAccent),
                  SizedBox(width: 5),
                  Text('gegasanugrah@gmail.com'),
                  SizedBox(width: 20),
                  Icon(Icons.phone, color: Colors.green),
                  SizedBox(width: 5),
                  Text('+62 812-3180-8302'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
