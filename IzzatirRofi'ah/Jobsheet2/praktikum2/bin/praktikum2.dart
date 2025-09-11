import 'dart:io';
import 'package:praktikum2/praktikum2.dart' as praktikum2;

void main() {
  Map<String, int> dataMahasiswa = {};

  // Input data mahasiswa (5 orang)
  for (int i = 1; i <= 5; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan nilai $nama: ");
    int nilai = int.parse(stdin.readLineSync()!);

    dataMahasiswa[nama!] = nilai;
  }

  print("\n========== HASIL KATEGORI KELULUSAN ==========");

  // Tentukan kategori kelulusan dan status
  dataMahasiswa.forEach((nama, nilai) {
    String kategori;
    String status;

    if (nilai >= 80) {
      kategori = 'A';
      status = 'Lulus Sangat Baik';
    } else if (nilai >= 60) {
      kategori = 'B';
      status = 'Lulus';
    } else {
      kategori = 'C';
      status = 'Tidak Lulus';
    }

    // Tampilkan hasil
    print("Nama: $nama | Nilai: $nilai | Kategori: $kategori | Status: $status");
  });
}