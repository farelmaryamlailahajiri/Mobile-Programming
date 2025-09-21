import 'dart:io';

void main() {
  Map<int, int> nilaiMahasiswa = {};

  for (int i = 1; i <= 5; i++) {
    stdout.write("Masukkan nilai mahasiswa ke $i: ");
    int? nilai = int.parse(stdin.readLineSync()!);
    nilaiMahasiswa[i] = nilai;
  }
  
  print("");
  print("Nilai Kuis Mobile Kelas 3A");
  print("=================================");
  
  nilaiMahasiswa.forEach((absen, nilai) {
    String kategori;
    if (nilai >= 80) {
      kategori = "A";
    } else if (nilai >= 60) {
      kategori = "B";
    } else {
      kategori = "C";
    }

    print("Absen $absen = Nilai $nilai, Kategori $kategori");
  });
}