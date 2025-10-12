import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.photo_library),
            onPressed: () {
              Navigator.pushNamed(context, '/gallery');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Profile Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 3),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/avatar.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nazwa Nurul Wijaya',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '2341760045 - D-IV Sistem Informasi Bisnis',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.email, size: 16, color: Colors.blue[700]),
                            const SizedBox(width: 5),
                            Text(
                              'nazwa@email.com',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.phone, size: 16, color: Colors.blue[700]),
                            const SizedBox(width: 5),
                            Text(
                              '+62 812-3456-7890',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Section 2: About Me
            const Text(
              'Tentang Saya',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: const Text(
                'Saya adalah mahasiswa Teknologi Informasi Program Studi D-IV Sistem Informasi Bisnis semester 5 yang sedang belajar dalam pengembangan aplikasi mobile. Memiliki ketertarikan dalam bidang data.',
                style: TextStyle(fontSize: 14, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),

            const SizedBox(height: 30),

            // Section 3: Mata Kuliah Semester 5
            const Text(
              'Mata Kuliah Semester 5',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: const [
                  _MataKuliahItem(
                    kode: 'PSD_SIB',
                    nama: ' Perencanaan Sumber Daya',
                    sks: 2,
                  ),
                  _MataKuliahItem(
                    kode: 'PEMR_MOB_SIB',
                    nama: 'Pemrograman Mobile',
                    sks: 3,
                  ),
                  _MataKuliahItem(
                    kode: 'K3_SIB',
                    nama: 'Kesehatan dan Keselamatan Kerja',
                    sks: 2,
                  ),
                  _MataKuliahItem(
                    kode: 'METPEN_SIB',
                    nama: 'Metodologi Penelitian',
                    sks: 2,
                  ),
                  _MataKuliahItem(
                    kode: 'PMPL_SIB',
                    nama: 'Penjaminan Mutu Perangkat Lunak',
                    sks: 2,
                  ),
                  _MataKuliahItem(
                    kode: 'MANPRO_SI_SIB',
                    nama: 'Manajemen Proyek Sistem Informasi',
                    sks: 2,
                  ),
                  _MataKuliahItem(
                    kode: 'KECBIS_SIB',
                    nama: 'Kecerdasan Bisnis',
                    sks: 2,
                  ),
                  _MataKuliahItem(
                    kode: 'MRP_SIB',
                    nama: 'Manajemen Rantai Pasok',
                    sks: 2,
                  ),
                  _MataKuliahItem(
                    kode: 'AUDSI_SIB',
                    nama: 'Audit Sistem Informasi',
                    sks: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MataKuliahItem extends StatelessWidget {
  final String kode;
  final String nama;
  final int sks;

  const _MataKuliahItem({
    required this.kode,
    required this.nama,
    required this.sks,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.blue[50],
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.school,
            color: Colors.blue[700],
            size: 20,
          ),
        ),
        title: Text(
          nama,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text('Kode: $kode'),
        trailing: Chip(
          label: Text(
            '$sks SKS',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          backgroundColor: Colors.blue[700],
        ),
      ),
    );
  }
}