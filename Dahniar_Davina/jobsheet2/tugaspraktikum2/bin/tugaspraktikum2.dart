import 'dart:io';
import 'package:tugaspraktikum2/tugaspraktikum2.dart' as tugaspraktikum2;

void main() {
  Map<String, int> nilaiMahasiswa = {};

  // 1. Input data 5 mahasiswa
  for (int i = 1; i <= 5; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();
    //String nama = stdin.readLineSync() ?? "Tanpa Nama";

    stdout.write("Masukkan nilai ujian $nama: ");
    int? nilai = int.tryParse(stdin.readLineSync() ?? "0");
    //int nilai = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

    if (nama != null && nilai != null) {
      nilaiMahasiswa[nama] = nilai;
    } 
  }

  // 2. Tentukan kategori kelulusan
  String tentukanKategori(int nilai) {
    if (nilai >= 80) {
      return "A";
    } else if (nilai >= 60) {
      return "B";
    } else {
      return "C";
    }
  }

  // 3. Fungsi untuk menentukan status kelulusan
  String statusKelulusan(int nilai) => (nilai >= 75) ? "Selamat! Anda dinyatakan lulus." : "Maaf! Anda dinyatakan tidak lulus.";

  // 4. Tampilan hasil akhir
  print("\n=== HASIL KATEGORI KELULUSAN ===");
  nilaiMahasiswa.forEach((nama, nilai) {
    String kategori = tentukanKategori(nilai);
    String status = statusKelulusan(nilai);

    print("Nama: $nama | Nilai: $nilai | Kategori: $kategori | Status: $status");
  });
}
