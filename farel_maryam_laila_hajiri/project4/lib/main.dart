import 'package:flutter/material.dart'; // Import library Flutter untuk UI

void main() {
  runApp(const Percobaan1()); // Jalankan widget utama Percobaan1
}

class Percobaan1 extends StatelessWidget { // Widget utama aplikasi (stateless)
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) { // Method build untuk menampilkan UI
    return MaterialApp( // Aplikasi Flutter dengan material design
      title: "Farel", // Judul aplikasi (tidak langsung terlihat di UI)
      home: Scaffold( // Scaffold = kerangka dasar halaman (AppBar, body, dsb.)
        appBar: AppBar( // Bagian atas aplikasi
          title: const Text( // Judul yang muncul di AppBar
            "Farell",
            style: TextStyle(
              fontSize: 32, // Ukuran teks 32
              fontWeight: FontWeight.bold, // Tebal
              letterSpacing: 2, // Jarak antar huruf
              color: Colors.white, // Warna teks putih
              fontStyle: FontStyle.italic, // Teks miring
              shadows: [ // Efek bayangan pada teks
                Shadow(
                  blurRadius: 10, // Tingkat blur bayangan
                  color: Colors.black45, // Warna bayangan
                  offset: Offset(2, 2), // Posisi bayangan (x=2, y=2)
                ),
              ],
            ),
          ),
          backgroundColor: Colors.blueAccent, // Warna background AppBar
          foregroundColor: Colors.white, // Warna ikon/teks di AppBar
          centerTitle: true, // Judul berada di tengah
        ),
        body: Padding( // Memberi jarak di seluruh sisi body
          padding: const EdgeInsets.all(16.0), // Jarak 16px
          child: Column( // Susun widget secara vertikal
            crossAxisAlignment: CrossAxisAlignment.center, // Konten rata tengah secara horizontal
            children: [
              const Text( // Judul lagu
                "BALONKU ADA 5",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const Text( // Nama pencipta lagu
                "Cipt. A.T. Mahmud",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 40), // Jarak kosong 40px
              const Align( // Mengatur posisi teks ke kiri
                alignment: Alignment.topLeft,
                child: Text(
                  "Balonku ada 5\n" // Isi lirik bait pertama
                  "Rupa-rupa warnanya\n"
                  "Hijau, kuning, kelabu\n"
                  "Merah muda, dan biru",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.left, // Rata kiri
                ),
              ),
              const SizedBox(height: 40), // Jarak kosong 40px
              Align( // Mengatur posisi teks ke kanan
                alignment: Alignment.topRight,
                child: Column( // Susun lirik bait kedua secara vertikal
                  crossAxisAlignment: CrossAxisAlignment.start, // Teks rata kiri di dalam Column
                  mainAxisSize: MainAxisSize.min, // Ukuran column menyesuaikan isi
                  children: const [
                    Text( // Baris pertama bait kedua
                      "Meletus balon hijau",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                    Text( // Kata "DORRR" lebih besar & merah
                      "DORRR",
                      style: TextStyle(
                        fontSize: 28, // Ukuran besar
                        fontWeight: FontWeight.bold, // Tebal
                        color: Colors.red, // Warna merah
                      ),
                      textAlign: TextAlign.center, // Rata tengah
                    ),
                    Text( // Sisa bait kedua
                      "Hatiku sangat kacau\n"
                      "Balonku tinggal 4\n"
                      "Kupegang erat-erat",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
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
}
