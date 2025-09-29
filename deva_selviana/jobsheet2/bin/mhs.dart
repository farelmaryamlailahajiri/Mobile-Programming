import 'dart:io';

void main() {
  // Map untuk menampung data 5 mahasiswa
  Map<String, Map<String, dynamic>> mahasiswa = {};

  for (int i = 1; i <= 5; i++) {
    stdout.writeln("=== Input Data Mahasiswa ke-$i ===");

    stdout.write("Masukkan Nama: ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan Nilai Ujian: ");
    int nilai = int.parse(stdin.readLineSync()!);

    // Tentukan kategori kelulusan
    String kategori;
    if (nilai >= 80) {
      kategori = 'A';
    } else if (nilai >= 60) {
      kategori = 'B';
    } else {
      kategori = 'C';
    }

    // Masukkan data ke dalam Map
    mahasiswa[nama!] = {
      "nilai": nilai,
      "kategori": kategori,
    };
  }

  // Tampilkan hasil akhir
  stdout.writeln("\n=== Daftar Mahasiswa dan Kategori ===");
  mahasiswa.forEach((nama, data) {
    stdout.writeln(
        "Nama: $nama, Nilai: ${data['nilai']}, Kategori: ${data['kategori']}");
  });
}