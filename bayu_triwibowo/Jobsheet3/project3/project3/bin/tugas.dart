import 'dart:io';

void main() {
  // ======================================
  // Growable List
  // ======================================
  List<String> mahasiswa = [];
  var jumlah = 5;

  for (var i = 0; i <= 4; i++) {
    stdout.write("Masukkan list ke index $i: ");
    var input = stdin.readLineSync();
    if (input != null) {
      mahasiswa.add(input);
      print("Data index ke-$i: ${mahasiswa[i]}");
    }
  }
  print("\nData dalam list: $mahasiswa\n");

  // ======================================
  // Union & Intersection
  // ======================================

  // Input Set 1
  var set1 = <String>{};
  stdout.write("Masukkan jumlah elemen Set 1: ");
  var n1 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  for (var i = 0; i < n1; i++) {
    stdout.write("Set 1 elemen ke-${i + 1}: ");
    var input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      set1.add(input);
    }
  }

  // Input Set 2
  var set2 = <String>{};
  stdout.write("\nMasukkan jumlah elemen Set 2: ");
  var n2 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  for (var i = 0; i < n2; i++) {
    stdout.write("Set 2 elemen ke-${i + 1}: ");
    var input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      set2.add(input);
    }
  }

  // Output Union & Intersection
  print("\n=== Hasil Union & Intersection ===");
  print("Set 1 = $set1");
  print("Set 2 = $set2");
  print("Union = ${set1.union(set2)}");
  print("Intersection = ${set1.intersection(set2)}\n");

  // ======================================
  // Map untuk Data Barang
  // ======================================
  Map<String, Map<String, dynamic>> barang = {
    "B001": {"nama": "Iphone 11", "harga": 5000000},
    "B002": {"nama": "Iphone 12", "harga": 7000000},
    "B003": {"nama": "Iphone 13", "harga": 9000000},
  };

  print("=== Data Barang ===");
  barang.forEach((kode, data) {
    print("$kode -> Nama: ${data['nama']}, Harga: Rp${data['harga']}");
  });
  print("");

  // ======================================
  // Record untuk Data Mahasiswa
  // ======================================
  var mhs = (nim: "2341760073", nama: "Bayu Triwibowo", ipk: 4.00);

  print("=== Data Mahasiswa ===");
  print("NIM  : ${mhs.nim}");
  print("Nama : ${mhs.nama}");
  print("IPK  : ${mhs.ipk}\n");

  // ======================================
  // Closure Diskon Bertingkat
  // ======================================
  double hargaAwal = 100000; // Rp100.000
  var hitungDiskon = buatDiskon(hargaAwal);

  print("=== Closure Diskon Bertingkat ===");
  print("Harga awal: Rp${hargaAwal.toStringAsFixed(0)}");
  print("Setelah panggilan 1: Rp${hitungDiskon()}");
  print("Setelah panggilan 2: Rp${hitungDiskon()}");
  print("Setelah panggilan 3: Rp${hitungDiskon()}");
  print("Setelah panggilan 4: Rp${hitungDiskon()}");
}

// Closure function
Function buatDiskon(double hargaAwal) {
  int diskon = 0;

  return () {
    diskon += 5; // setiap kali dipanggil, tambah 5%
    double hargaAkhir = hargaAwal - (hargaAwal * diskon / 100);
    return hargaAkhir.toStringAsFixed(0);
  };
}
