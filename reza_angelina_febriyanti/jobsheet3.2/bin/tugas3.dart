import 'dart:io';

void main() {
  //Menyimpan daftar nama mahasiswa menggunakan Growable List
  /*
  List<String> mahasiswa = [];

  stdout.write("Masukkan jumlah mahasiswa: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlah; i++) {
    stdout.write("Nama mahasiswa ke-${i + 1}: ");
    String nama = stdin.readLineSync()!;
    mahasiswa.add(nama);
  }

  print("\nDaftar nama mahasiswa: $mahasiswa");
  print("Jumlah data mahasiswa: ${mahasiswa.length}");
  */

  //Menghitung union & intersection dari dua set yang diinput manual
  /*
  Set<String> set1 = {};
  Set<String> set2 = {};

  stdout.write("Masukkan jumlah elemen set 1: ");
  int n1 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n1; i++) {
    stdout.write("Elemen set 1 ke-${i + 1}: ");
    set1.add(stdin.readLineSync()!);
  }

  stdout.write("Masukkan jumlah elemen set 2: ");
  int n2 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n2; i++) {
    stdout.write("Elemen set 2 ke-${i + 1}: ");
    set2.add(stdin.readLineSync()!);
  }

  print("\nSet 1: $set1");
  print("Set 2: $set2");

  print("Union = ${set1.union(set2)}");
  print("Intersection = ${set1.intersection(set2)}");
  */

  //MAP untuk menyimpan data barang (kode, nama, harga)
  Map<String, Map<String, dynamic>> barang = {};

  stdout.write("Masukkan jumlah barang: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlah; i++) {
    print("\nInput data barang ke-${i + 1}");

    stdout.write("Kode barang : ");
    String kode = stdin.readLineSync()!;

    stdout.write("Nama barang : ");
    String nama = stdin.readLineSync()!;

    stdout.write("Harga barang : ");
    int harga = int.parse(stdin.readLineSync()!);

    barang[kode] = {"nama": nama, "harga": harga};
  }

  print("\nDaftar barang:");
  barang.forEach((kode, detail) {
    print("Kode: $kode, Nama: ${detail['nama']}, Harga: Rp${detail['harga']}");
  });
}