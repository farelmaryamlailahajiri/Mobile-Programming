import 'dart:io';

void main() {
  // Map untuk menyimpan data mahasiswa
  Map<String, int> nilaiMahasiswa = {};

  // Input data 5 mahasiswa
  for (int i = 1; i <= 5; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan nilai $nama: ");
    String? inputNilai = stdin.readLineSync();
    int nilai = int.tryParse(inputNilai ?? '') ?? 0;

    // Simpan ke dalam map
    if (nama != null && nama.isNotEmpty) {
      nilaiMahasiswa[nama] = nilai;
    }
  }

  print("\n=== HASIL KATEGORI MAHASISWA ===");
  // Tampilkan hasil dengan kategori
  nilaiMahasiswa.forEach((nama, nilai) {
    String kategori;

    if (nilai >= 80) {
      kategori = "A";
    } else if (nilai >= 60) {
      kategori = "B";
    } else {
      kategori = "C";
    }

    print("Mahasiswa: $nama | Nilai: $nilai | Kategori: $kategori");
  });
}
