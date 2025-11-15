import 'package:flutter/material.dart';

void main() {
  // Menjalankan aplikasi utama
  runApp(const SpotifyLikePlayer());
}

// Widget root aplikasi
class SpotifyLikePlayer extends StatelessWidget {
  const SpotifyLikePlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hilangkan label debug
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black), // Tema gelap dengan background hitam
      home: const SpotifyLikeScreen(), // Halaman utama
    );
  }
}

// Halaman utama player
class SpotifyLikeScreen extends StatelessWidget {
  const SpotifyLikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Latar belakang luar hitam
      body: Center(
        child: Container(
          // Container utama (kotak abu-abu transparan di tengah)
          width: MediaQuery.of(context).size.width * 0.9, // 90% lebar layar
          height: MediaQuery.of(context).size.height * 0.9, // 90% tinggi layar
          decoration: BoxDecoration(
            color: Colors.grey[300]!.withValues(alpha: 0.15), // Warna abu-abu muda transparan
            borderRadius: BorderRadius.circular(30), // Sudut melengkung
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.1), // Border putih tipis transparan
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.5), // Efek bayangan hitam
                blurRadius: 50,
                spreadRadius: 5,
              ),
            ],
          ),
          child: SafeArea(
            // Konten agar tidak terhalang status bar
            child: SingleChildScrollView(
              // Scroll jika konten panjang
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // --- ALBUM ART ---
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16), // Sudut membulat
                    child: Image.network(
                      "https://i.scdn.co/image/ab67616d0000b273bccc6b1722a910bf1025c032", // Gambar album
                      height: 350,
                      width: double.infinity,
                      fit: BoxFit.cover, // Isi penuh dengan crop proporsional
                    ),
                  ),
                  const SizedBox(height: 20), // Spasi

                  // --- METADATA LAGU ---
                  const Text(
                    "ours to keep", // Judul lagu
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Kendis, Adis", // Nama artis
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),

                  // --- LIRIK LAGU ---
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20), // Padding dalam kontainer
                    decoration: BoxDecoration(
                      color: const Color(0xFF4A3F35).withValues(alpha: 0.7), // Abu tua kecoklatan transparan
                      borderRadius: BorderRadius.circular(12), // Sudut membulat
                      border: Border.all(
                        color: const Color(0xFF6B5A4E), // Border coklat keabu
                        width: 1,
                      ),
                    ),
                    child: const Text(
                      """
How are you in your time alone?
I'm doing fine, well, I'm not
I feel like I wanna die
I have so much to tell you, love
From the start of the day
'Til the the dawn breaks away
I've been thinking of you
And I've been missing your voice on the other side
And I've been dreaming of you
And I can hear you singing through the silent night
Do you ever feel the need to get away from me?
Do I bore you?
Or do you want to
Take me from this crowded place to
Somewhere we can find some peace
And the world is ours to keep, mm
They don't have to know how we touch
'Cause this feeling's all ours
And they'd become so loud trying to
Fix what was never really broken
And you are my safe haven
I am on your side
Do you ever feel the need to get away from me?
Do I bore you?
Or do you want to
Take me from this crowded place to
Somewhere we can find some peace
And the world is ours to keep, mm
In this world, we are fading away
And I'm not fine
Sometimes, it gets so lonely
And I'm still scared to ask for help
But I'll look at you the same as today
The one that I've been needing
I never thought I'd have
I've been thinking of you
And I've been missing your voice on the other side
Do you ever feel the need to get away from me? (I've been missing you)
Do I bore you? (Voice on the other side)
Or do you want to
Take me from this crowded place to (I've been dreaming of you)
Somewhere we can find some peace (and I can hear you singing)
And the world is ours to keep (through the silent night)
""", // Isi lirik
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.8, // Jarak antar baris
                        color: Colors.white, // Teks putih
                      ),
                      textAlign: TextAlign.center,
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
}
