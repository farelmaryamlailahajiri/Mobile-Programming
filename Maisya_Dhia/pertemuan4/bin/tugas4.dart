import 'dart:io';

void main() {
  // ==========================
  // 1. Growable List Mahasiswa
  // ==========================
  var mahasiswa = <String>[]; // growable list kosong
  stdout.write("Masukkan jumlah mahasiswa: ");
  int jumlah = int.parse(stdin.readLineSync() ?? '0');

  for (var i = 0; i < jumlah; i++) {
    stdout.write("Masukkan nama mahasiswa ke-${i + 1}: ");
    var input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      mahasiswa.add(input);
    }
  }
  print("\nDaftar Mahasiswa: $mahasiswa");
  print("Jumlah Mahasiswa: ${mahasiswa.length}");

  // ==============================
  // 2. Union & Intersection of Set
  // ==============================
  var setA = <int>{};
  var setB = <int>{};

  stdout.write("\nMasukkan jumlah elemen Set A: ");
  int nA = int.parse(stdin.readLineSync() ?? '0');
  for (var i = 0; i < nA; i++) {
    stdout.write("Masukkan elemen ke-${i + 1} Set A: ");
    setA.add(int.parse(stdin.readLineSync() ?? '0'));
  }

  stdout.write("\nMasukkan jumlah elemen Set B: ");
  int nB = int.parse(stdin.readLineSync() ?? '0');
  for (var i = 0; i < nB; i++) {
    stdout.write("Masukkan elemen ke-${i + 1} Set B: ");
    setB.add(int.parse(stdin.readLineSync() ?? '0'));
  }

  print("\nSet A: $setA");
  print("Set B: $setB");
  print("Union: ${setA.union(setB)}");
  print("Intersection: ${setA.intersection(setB)}");

  // ==========================
  // 3. Map Barang
  // ==========================
  var barang = <String, Map<String, dynamic>>{};

  barang['B001'] = {"nama": "Pensil", "harga": 2000};
  barang['B002'] = {"nama": "Buku", "harga": 5000};
  barang['B003'] = {"nama": "Penghapus", "harga": 1500};

  print("\nData Barang:");
  barang.forEach((kode, data) {
    print("Kode: $kode | Nama: ${data['nama']} | Harga: Rp${data['harga']}");
  });

  // ==========================
  // 4. Closure Diskon Bertingkat
  // ==========================
  var diskon = hitungDiskon();
  print("\nHitung Diskon Bertingkat:");
  print("Diskon Pertama: ${diskon()}%");
  print("Diskon Kedua: ${diskon()}%");
  print("Diskon Ketiga: ${diskon()}%");
}

// Closure untuk diskon
Function hitungDiskon() {
  int persen = 0;
  return () {
    persen += 5;
    return persen;
  };
}
