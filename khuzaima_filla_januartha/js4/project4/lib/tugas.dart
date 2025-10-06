import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "I Love Ruby",
      // Menghilangkan banner debug
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ruby's Family"),
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white70,
          titleTextStyle: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
          ),
        ),
        // Menggunakan Stack untuk menumpuk widget
        body: Stack(
          children: [
            // 1. Widget untuk Background Gambar
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  // Ganti 'assets/background.jpg' dengan path gambar Anda
                  image: AssetImage("assets/bgff.jpg"), 
                  // Membuat gambar menutupi seluruh layar
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(const Color.fromRGBO(0, 0, 0, 0.7), BlendMode.darken,
                  ),
                ),
              ),
            ),

            // 2. Widget untuk Konten Lirik di atas gambar
            // Dibungkus SingleChildScrollView agar bisa di-scroll jika layar kecil
            SingleChildScrollView(
              // Diberi padding agar teks tidak menempel di tepi layar
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "💕Love Is Not Enough💕",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Warna teks diubah agar kontras
                          shadows: [ // Bayangan agar teks mudah dibaca
                            Shadow(blurRadius: 7.0, color: Colors.black54, offset: Offset(0, 2))
                          ]
                        ),
                      ),
                      const SizedBox(height: 8), // Jarak antara judul dan artis
                      const Text(
                        "flowfist",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.pinkAccent,
                          shadows: [
                            Shadow(blurRadius: 5.0, color: Colors.black87, offset: Offset(0, 1))
                          ]
                        ),
                      ),
                      const SizedBox(height: 32), // Jarak antara artis dan bait pertama

                      // Lirik lagu dengan style yang sama dan jarak yang rapi
                      const Text(
                        "I've chosen you, to colorize\nLike a rainbow fills the blue sky\nIt's hard to say, oooh",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white38),
                      ),
                      const SizedBox(height: 24), // Jarak antar bait
                      const Text(
                        "You never say, what's in your heart\nThat is your love really true for me\nYou can't even hide it",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        "When the moon hits saturn's ring\nThat is how i feel without you\nWithout you, without you",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        "You make me cry, make me drown\nBut i still can't let you go\nCause you're lifetime guarentee",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        "And i, make you laugh, make you happy\nBut you always make me down\nCause I love You is not enough",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white38),
                      ),
                      const Text(
                        "\n\n\n\n\n#robloxforlife",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white54, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold,),
                        
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}