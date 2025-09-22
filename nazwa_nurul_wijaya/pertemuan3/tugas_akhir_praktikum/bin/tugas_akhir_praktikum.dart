import 'package:tugas_akhir_praktikum/tugas_akhir_praktikum.dart' as tugas_akhir_praktikum;

import 'dart:io';

void main() {
  Map<String, int> mahasiswa = {};

  // Ini untuk input data mahasiswa
  for (int i = 1; i <= 5; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan nilai ujian $nama: ");
    int? nilai = int.tryParse(stdin.readLineSync() ?? '0');

    if (nama != null && nilai != null) {
      mahasiswa[nama] = nilai;
    }
  }

  print("\n=== Hasil Akhir ===");
  // Proses penentuan kategori
  mahasiswa.forEach((nama, nilai) {
    String kategori;
    if (nilai >= 80) {
      kategori = 'A';
    } else if (nilai >= 60 && nilai <= 79) {
      kategori = 'B';
    } else {
      kategori = 'C';
    }

    print("Mahasiswa: $nama | Nilai: $nilai | Kategori: $kategori");
  });
}

