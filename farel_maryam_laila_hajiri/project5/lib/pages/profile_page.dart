import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    final accentColor = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            elevation: 8,
            shadowColor: Colors.black26,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(25),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 🖼️ Foto Profil dari assets (ganti path sesuai file kamu)
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: accentColor, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        )
                      ],
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profile.png'), 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Nama
                  Text(
                    'Farel Maryam Laila Hajiri',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 5),
                  Text(
                    'Software Developer | Code Enthusiast',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Informasi Personal
                  Column(
                    children: [
                      _buildProfileInfoRow(
                        icon: Icons.badge_outlined,
                        label: 'NIM',
                        value: '2341760028',
                        color: accentColor,
                      ),
                      const SizedBox(height: 10),
                      _buildProfileInfoRow(
                        icon: Icons.school_outlined,
                        label: 'Class',
                        value: 'SIB 3A',
                        color: accentColor,
                      ),
                      const SizedBox(height: 10),
                      _buildProfileInfoRow(
                        icon: Icons.email_outlined,
                        label: 'Email',
                        value: 'farel@domain.com',
                        color: accentColor,
                      ),
                      const SizedBox(height: 10),
                      _buildProfileInfoRow(
                        icon: Icons.phone_android_outlined,
                        label: 'Phone',
                        value: '+62 812-3456-7890',
                        color: accentColor,
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  // Tombol aksi (bonus)
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Profile updated successfully!')),
                      );
                    },
                    icon: const Icon(Icons.edit_outlined),
                    label: const Text('Edit Profile'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // 🔧 Widget pembantu untuk menampilkan data profil dalam baris rapi
  Widget _buildProfileInfoRow({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Row(
      children: [
        Icon(icon, color: color, size: 26),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            '$label:',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 15,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            value,
            style: GoogleFonts.poppins(
              color: Colors.grey[800],
              fontSize: 15,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
