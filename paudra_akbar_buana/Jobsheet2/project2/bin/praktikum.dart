import 'dart:io';

void main() {
  Map <String, int> mhs = {};
  print("Input data mahasiswa");
  for (int i = 1; i <= 5; i++){
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String nama = stdin.readLineSync()!;
    stdout.write("Masukkan nilai mahasiswa: ");
    int nilai = int.parse(stdin.readLineSync()!);
    mhs[nama] = nilai;
  }

  print("\n Data Mahasiswa:");
  mhs.forEach((nama, nilai) {
    String kategori;

    switch (nilai) {
      case >= 80 && <= 100:
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