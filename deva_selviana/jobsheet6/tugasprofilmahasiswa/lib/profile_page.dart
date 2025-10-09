import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final List<String> _mataKuliah = const [
    'Pemprograman Mobile',
    'Metodologi Penelitian',
    'Manajemen Proyek',
    'Penjaminan Mutu Perangkat Lunak',
    'Perencanaan Sumber Daya',
    'Audit Sistem Informasi',
    'Kecerdasan Buatan',
    'Kesehatan dan Keselamatan Kerja',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final avatarSize = width > 600 ? 140.0 : 90.0;

    return Scaffold(
      appBar: AppBar(title: const Text('Profil Mahasiswa')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0,2))],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/images/avatar.jpg', width: avatarSize, height: avatarSize, fit: BoxFit.cover),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Deva Selviana', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text('NIM: 2341760060', style: TextStyle(fontSize: 14)),
                          SizedBox(height: 6),
                          Text('Jurusan: Teknologi Informasi', style: TextStyle(fontSize: 14)),
                          SizedBox(height: 6),
                          Text('Program Studi: Sistem Informasi Bisnis', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 18),

              const Text('Daftar Mata Kuliah (Semester 5)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),

              // ListView untuk mata kuliah
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 2,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemCount: _mataKuliah.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(child: Text('${index + 1}')),
                        title: Text(_mataKuliah[index]),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // contoh aksi: tunjukkan snackbar
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Detail mata kuliah: ${_mataKuliah[index]}')),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => Navigator.pushNamed(context, '/gallery'),
                      icon: const Icon(Icons.photo),
                      label: const Text('Buka Galeri'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Kembali'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}