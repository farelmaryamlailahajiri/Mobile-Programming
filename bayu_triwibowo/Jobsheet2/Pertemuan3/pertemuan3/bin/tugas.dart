import 'dart:io';

void main() {
  // Map untuk menyimpan data mahasiswa: nama & nilai
  Map<String, int> mahasiswa = {};

  // Input data 5 mahasiswa
  for (int i = 1; i <= 5; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan nilai $nama: ");
    int nilai = int.parse(stdin.readLineSync()!);

    mahasiswa[nama!] = nilai;
  }

  print("\n=== Hasil Kategori Kelulusan ===");
  // Looping untuk menentukan kategori tiap mahasiswa
  mahasiswa.forEach((nama, nilai) {
    String kategori;

    if (nilai >= 80) {
      kategori = 'A';
    } else if (nilai >= 60) {
      kategori = 'B';
    } else {
      kategori = 'C';
    }

    print("Mahasiswa: $nama | Nilai: $nilai | Kategori: $kategori");
  });
}
