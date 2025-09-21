import 'dart:io';

void main() {
  // Map untuk menyimpan data mahasiswa 
  Map<String, int> mahasiswa = {};

  // Input data 5 mahasiswa
  for (int i = 1; i <= 5; i++) {
    stdout.write("Nama mahasiswa ke-$i: ");
    String nama = stdin.readLineSync()!; 

    stdout.write("Nilai $nama: ");
    int nilai = int.parse(stdin.readLineSync()!); 
    mahasiswa[nama] = nilai; 
  }

  // Tampilkan hasil akhir
  print("\n=== Hasil Akhir ===");
  mahasiswa.forEach((nama, nilai) {
    String kategori;

    // Tentukan kategori nilai
    if (nilai >= 80) {
      kategori = 'A';
    } else if (nilai >= 60) {
      kategori = 'B';
    } else {
      kategori = 'C';
    }

    // Cetak hasil
    print("$nama - Nilai: $nilai - Kategori: $kategori");
  });
}
