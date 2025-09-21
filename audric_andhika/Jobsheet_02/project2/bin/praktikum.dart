import 'dart:io';

void main() {
  Map <String, int> mahasiswa = {};
  print("Input data mahasiswa");
  for (int i = 1; i <= 5; i++){
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String nama = stdin.readLineSync()!;
    stdout.write("Masukkan nilai mahasiswa: ");
    int nilai = int.parse(stdin.readLineSync()!);
    mahasiswa[nama] = nilai;
  }
  
  print("\n Hasil Akhir Data Mahasiswa:");
  mahasiswa.forEach((nama, nilai) {
    String kategori;

    switch (nilai) {
      case >= 80:
        kategori = "A";
        break;
      case >= 60 && <= 79:
        kategori = "B";
        break;
      default:
        kategori = "C";
    }

    print("Mahasiswa: $nama, Nilai: $nilai, Kategori: $kategori");
  });
}