import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 1. Halaman Profil (StatelessWidget)
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // Contoh data profil
  final String nama = "Paudra Akbar Buana";
  final String nim = "NIM: 2341760063";
  final String jurusan = "Jurusan: Sistem Informasi Bisnis";

  @override
  Widget build(BuildContext context) {
    // Scaffold + AppBar dengan judul Profil Mahasiswa
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          // Susun dengan Column
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 30),
              // Container untuk styling (warna background, padding, margin)
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).colorScheme.surface, // Warna surface dari tema
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // FlutterLogo
                    const FlutterLogo(size: 100),
                    const SizedBox(height: 20),

                    // Foto profil (Image) atau Placeholder
                    _buildProfileImage(),
                    const SizedBox(height: 30),

                    // Nama, NIM, dan Jurusan menggunakan Text dengan custom font
                    Text(
                      nama,
                      style: GoogleFonts.robotoSlab(
                        // Menggunakan Google Fonts
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      nim,
                      style: GoogleFonts.robotoSlab(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      jurusan,
                      style: GoogleFonts.robotoSlab(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Row untuk ikon tambahan
                    // Tambahkan Icon (misalnya email, telepon)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(
                          Icons.email,
                          color: Colors.blueAccent,
                          size: 28,
                        ),
                        const SizedBox(width: 15),
                        const Icon(
                          Icons.phone,
                          color: Colors.greenAccent,
                          size: 28,
                        ),
                        const SizedBox(width: 0),
                        // 4. Bonus (Opsional): Tambahkan Button lain (misalnya IconButton)
                        IconButton(
                          icon: const Icon(
                            Icons.link,
                            color: Colors.orangeAccent,
                            size: 28,
                          ),
                          onPressed: () {
                            // Aksi saat tombol diklik
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Membuka tautan profil'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan gambar profil
  Widget _buildProfileImage() {
    // Jika Anda memiliki gambar di folder 'assets/images/profile.jpg', ganti Placeholder
    return ClipOval(
      child: Image.asset(
        'assets/images/profile.jpeg', // Ganti dengan path gambar Anda
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );

    // Gunakan Placeholder jika gambar belum tersedia
    // return Container(
    //   width: 150,
    //   height: 150,
    //   decoration: BoxDecoration(
    //     color: Colors.grey[700],
    //     shape: BoxShape.circle,
    //   ),
    //   child: const Placeholder(
    //     fallbackHeight: 150,
    //     fallbackWidth: 150,
    //     color: Colors.redAccent,
    //     strokeWidth: 2,
    //   ),
    // );
  }
}
