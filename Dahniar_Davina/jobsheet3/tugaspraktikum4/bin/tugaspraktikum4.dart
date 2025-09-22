import 'dart:io';
//import 'package:tugaspraktikum4/tugaspraktikum4.dart' as tugaspraktikum4;

void main() {
  // =======================
  // 1. Growable List Mahasiswa
  // =======================
  var mahasiswa = <String>[];

  stdout.writeln("=== Input Daftar Nama Mahasiswa ===");
  stdout.write("Masukkan jumlah mahasiswa: ");
  var jmlMhs = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  for (var i = 1; i <= jmlMhs; i++) {
    stdout.write("Nama mahasiswa ke-$i: ");
    var input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      mahasiswa.add(input);
    } else {
      mahasiswa.add("Anonim"); // default kalau kosong
    }
  }

  print("\nDaftar Mahasiswa: $mahasiswa");
  print("Jumlah Mahasiswa: ${mahasiswa.length}\n");

  // =======================
  // 2. Union & Intersection
  // =======================
  var setA = <int>{};
  var setB = <int>{};

  stdout.writeln("=== Input Angka untuk Set A ===");
  for (var i = 1; i <= 3; i++) {
    stdout.write("Angka $i: ");
    var input = int.tryParse(stdin.readLineSync() ?? "");
    setA.add(input ?? 0); // default 0 kalau kosong
  }

  stdout.writeln("\n=== Input Angka untuk Set B ===");
  for (var i = 1; i <= 3; i++) {
    stdout.write("Angka $i: ");
    var input = int.tryParse(stdin.readLineSync() ?? "");
    setB.add(input ?? 0); // default 0 kalau kosong
  }

  print("\nSet A = $setA");
  print("Set B = $setB");
  print("Union = ${setA.union(setB)}");
  print("Intersection = ${setA.intersection(setB)}\n");

  // =======================
  // 3. Map Data Barang
  // =======================
  var barang = <Map<String, dynamic>>[];

  stdout.writeln("=== Input Data Barang ===");
  stdout.write("Masukkan jumlah barang: ");
  var jmlBarang = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  for (var i = 1; i <= jmlBarang; i++) {
    stdout.write("Kode barang ke-$i: ");
    var kode = stdin.readLineSync() ?? "BRG$i";

    stdout.write("Nama barang ke-$i: ");
    var nama = stdin.readLineSync() ?? "Barang$i";

    stdout.write("Harga barang ke-$i: ");
    var harga = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

    barang.add({"kode": kode, "nama": nama, "harga": harga});
  }

  print("\nData Barang:");
  for (var b in barang) {
    print("Kode: ${b['kode']}, Nama: ${b['nama']}, Harga: Rp${b['harga']}");
  }
  print("");

  // =======================
  // 4. Function Closure Diskon Bertingkat
  // =======================
  Function buatDiskon() {
    var diskon = 0;
    return () {
      diskon += 5;
      return diskon;
    };
  }

  var hitungDiskon = buatDiskon();

  stdout.writeln("=== Hitung Diskon Bertingkat ===");
  stdout.write("Berapa kali panggil diskon? ");
  var kali = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  for (var i = 1; i <= kali; i++) {
    print("Diskon ke-$i: ${hitungDiskon()}%");
  }
}
