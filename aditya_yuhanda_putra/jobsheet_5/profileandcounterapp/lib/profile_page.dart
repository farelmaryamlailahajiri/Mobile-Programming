import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Mahasiswa"),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const FlutterLogo(size: 100),
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset("assets/profil.jpg", height: 120),
            ),
            Text(
              "Aditya Yuhanda Putra",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("NIM: 2341760050"),
            const Text("Jurusan: Teknologi Informasi"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 5),
                Text("adityayuhanda3001@gmail.com"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 5),
                Text("08906775727"),
              ],
            ),
            const SizedBox(height: 20),
            IconButton(
              icon: const Icon(Icons.info, color: Colors.teal),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Ini adalah profil saya")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
