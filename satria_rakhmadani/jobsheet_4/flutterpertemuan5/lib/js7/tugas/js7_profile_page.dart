import 'package:flutter/material.dart';
import 'js7_routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final List<String> semester5Courses = const [
    'Jaringan Komputer',
    'Praktikum Jaringan Komputer',
    'Keamanan Informasi',
    'Basis Data Lanjutan',
    'Rekayasa Perangkat Lunak',
    'Analisis & Desain Sistem',
  ];

  @override
  Widget build(BuildContext context) {
    // responsive width helper
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.photo_library),
            tooltip: 'Buka Galeri',
            onPressed: () => Navigator.pushNamed(context, Routes.gallery),
          )
        ],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 600;
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Profile card: responsive between row + column
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(blurRadius: 6, color: Colors.black12, offset: Offset(0,2))
                  ],
                ),
                child: isNarrow
                    ? Column(
                        children: _buildProfileContent(isNarrow, width),
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _buildProfileContent(isNarrow, width),
                      ),
              ),
              const SizedBox(height: 16),
              // About / bio
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Halo! Saya mahasiswa Program Studi Teknologi Informasi. '
                  'Saya tertarik pada jaringan, desain UI, dan pengembangan aplikasi mobile.',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const SizedBox(height: 20),
              // Semester 5 courses title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Mata Kuliah Semester 5', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Chip(label: Text('${semester5Courses.length} mata kuliah')),
                ],
              ),
              const SizedBox(height: 10),
              // ListView inside constrained container
              Container(
                constraints: BoxConstraints(
                  maxHeight: isNarrow ? 300 : 200,
                ),
                child: Card(
                  margin: EdgeInsets.zero,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: semester5Courses.length,
                    separatorBuilder: (_, __) => const Divider(height: 8),
                    itemBuilder: (context, index) {
                      final name = semester5Courses[index];
                      return ListTile(
                        leading: CircleAvatar(child: Text('${index+1}')),
                        title: Text(name),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {
                          // contoh aksi tap
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Pilih mata kuliah: $name')),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 20),
              // CTA: buka galeri
              ElevatedButton.icon(
                icon: const Icon(Icons.photo),
                label: const Text('Lihat Galeri'),
                onPressed: () => Navigator.pushNamed(context, Routes.gallery),
              ),
            ],
          ),
        );
      }),
    );
  }

  // helper to build profile content depending on layout
  List<Widget> _buildProfileContent(bool isNarrow, double width) {
    final avatar = Container(
      margin: EdgeInsets.only(right: isNarrow ? 0 : 16, bottom: isNarrow ? 12 : 0),
      child: CircleAvatar(
        radius: isNarrow ? 56 : 64,
        backgroundImage: const AssetImage('assets/images/avatar.png'),
      ),
    );

    final info = Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Satria Rakhmadani', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          Row(
            children: const [
              Icon(Icons.school, size: 16),
              SizedBox(width: 6),
              Text('Teknologi Informasi - Semester 4'),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _smallInfoChip(Icons.email, 'satria@mail.com'),
              _smallInfoChip(Icons.phone, '+62 812-3456-7890'),
              _smallInfoChip(Icons.location_on, 'Surabaya'),
            ],
          ),
          const SizedBox(height: 12),
          // quick stat row
          Row(
            children: [
              _statItem('IPK', '3.75'),
              const SizedBox(width: 12),
              _statItem('SKS', '96'),
            ],
          )
        ],
      ),
    );

    if (isNarrow) {
      return [avatar, info];
    } else {
      return [avatar, info];
    }
  }

  Widget _smallInfoChip(IconData icon, String label) {
    return Chip(
      avatar: Icon(icon, size: 16),
      label: Text(label, style: const TextStyle(fontSize: 12)),
    );
  }

  Widget _statItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 12, color: Colors.black54)),
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
