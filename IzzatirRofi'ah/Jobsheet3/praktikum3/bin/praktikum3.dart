import 'dart:io';
import 'package:praktikum3/praktikum3.dart' as praktikum3;

void main(List<String> arguments) {
  // print('Hello world: ${praktikum3.calculate()}!');

  // Praktikum-1 : List Mahasiswa
  // var mahasiswa = [];

  // stdout.write("Masukkan jumlah mahasiswa: ");
  // var n = int.parse(stdin.readLineSync()!);

  // for (var i = 0; i < n; i++) {
  //   stdout.write("Nama mahasiswa ke-$i: ");
  //   mahasiswa.add(stdin.readLineSync()!);
  // }

  // print("\nDaftar mahasiswa: $mahasiswa");
  // print("Jumlah: ${mahasiswa.length}");

  // Praktikum-2 : Union & Intersection
  // stdout.write("Masukkan elemen set A: ");
  // var setA = stdin.readLineSync()!.split(",").map((e) => e.trim()).toSet();

  // stdout.write("Masukkan elemen set B: ");
  // var setB = stdin.readLineSync()!.split(",").map((e) => e.trim()).toSet();

  // print("\nUnion: ${setA.union(setB)}");
  // print("Intersection: ${setA.intersection(setB)}");

  // Praktikum-3 : Map untuk Data Barang
  var barang = {};

  stdout.write("Masukkan jumlah barang: ");
  var jumlah = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < jumlah; i++) {
    stdout.write("Masukkan kode barang ke-$i: ");
    var kode = stdin.readLineSync()!;

    stdout.write("Masukkan nama barang ke-$i: ");
    var nama = stdin.readLineSync()!;

    barang[kode] = nama;
  }

  print("\nData barang:");
  barang.forEach((kode, nama) {
    print("Kode: $kode, Nama: $nama");
  });
}