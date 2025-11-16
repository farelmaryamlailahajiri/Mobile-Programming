import 'dart:io';

import 'package:tugaspraktikum2/tugaspraktikum2.dart' as tugaspraktikum2;

void main(List<String> arguments) {
  Map<String, int> nilaiMahasiswa = {};
  
  //no. 1 input nilai ujian 5 mahasiswa
  for (int i = 1; i <= 5; i++) {
  stdout.write("Masukkan nama mahasiswa ke-$i: ");
  String? nama = stdin.readLineSync();

  stdout.write("Masukkan nilai ujian $nama: ");
  int? inputNilai = int.tryParse(stdin.readLineSync() ?? '0');

  if (nama != null && inputNilai != null) {
    nilaiMahasiswa[nama] = inputNilai;
  } else {
    print("Input tidak valid. Silakan coba lagi.");
    i--; // ulangi iterasi untuk mahasiswa yang sama
  }
  }

  //no. 2 Kategori kelulusan & no 3 menggunakan If else
  nilaiMahasiswa.forEach((nama, nilai) {
    String kategori;
    if (nilai >= 80) {
      kategori = "A";
    } else if (nilai >= 60) {
      kategori = "B";
    } else {
      kategori = "C";
    }
    print("Nama: $nama, Nilai: $nilai, Kategori: $kategori");
  });
}
