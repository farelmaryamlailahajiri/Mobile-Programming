import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Profil'),
        backgroundColor: Colors.blue[800], 
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.horizontal,
          ),
          const SizedBox(height: 20),

          Center(
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue[800]!, width: 2),
              ),
              child: ClipOval( 
                child: Image.asset(
                  'assets/img/profil.png',
                  fit: BoxFit.cover, 
                  width: 180,  
                  height: 180, 
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300], 
                      child: const Center(
                        child: Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blue[50], 
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue[200]!),
            ),
            child: Column(
              children: [
                Text(
                  'Mochammad Audric Andhika Hidayatulloh',
                  style: GoogleFonts.roboto( 
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  '2341760094',
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Teknologi Informasi',
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Email Icon
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    const Icon(Icons.email, color: Colors.green, size: 30),
                    const SizedBox(height: 4),
                    Text(
                      'audricc015@gmail.com',
                      style: GoogleFonts.roboto(fontSize: 12),
                    ),
                  ],
                ),
              ),
              // Telepon Icon
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    const Icon(Icons.phone, color: Colors.orange, size: 30),
                    const SizedBox(height: 4),
                    Text(
                      '+62 858 1212 1478',
                      style: GoogleFonts.roboto(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}