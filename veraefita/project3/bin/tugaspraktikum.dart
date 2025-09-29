  import 'package:project3/project3.dart' as tugas;
  import 'dart:io';

void main() {
//   // // 1. Growable List
//   var mahasiswa = <String>[];
//   for (var i = 0; i < 3; i++) {
//     stdout.write("Masukkan nama mahasiswa ke-${i + 1}: ");
//     String? input = stdin.readLineSync();
//     if (input != null && input.isNotEmpty) {
//       mahasiswa.add(input);
//     }
//   }
//   print("Daftar mahasiswa: $mahasiswa");
//   // print("Jumlah mahasiswa: ${mahasiswa.length}");


//Union & Intersection dari 2 Set;
// void unionIntersection() {

//   var set1 = {1, 2, 3, 4, 5};
//   var set2 = {4, 5, 6, 7, 8};

//   print("Set 1: $set1");
//   print("Set 2: $set2");

//   print("Union: ${set1.union(set2)}");
//   print("Intersection: ${set1.intersection(set2)}");
// }

// map data barang

// void map_databarang() {
//   // Map = key:value, bisa untuk simpan data barang
//   var barang = {
//     "B001": {"nama": "Pensil", "harga": 2000},
//     "B002": {"nama": "Buku", "harga": 5000},
//     "B003": {"nama": "Penghapus", "harga": 1000},
//   };

//   print("Daftar Barang:");
//   barang.forEach((kode, data) {
//     print("Kode: $kode, Nama: ${data['nama']}, Harga: ${data['harga']}");
//   });
// }
// map_databarang();
// unionIntersection();

// record mahasiswa
// void recordMahasiswa() {
//   // Record = tipe data baru untuk menampung beberapa nilai sekaligus
//   var mhs = (nim: "2341760047", nama: "Vera Efita", ipk: 3.75);

//   print("Data Mahasiswa:");
//   print("NIM : ${mhs.nim}");
//   print("Nama: ${mhs.nama}");
//   print("IPK : ${mhs.ipk}");
// }
// recordMahasiswa();

//diskon

Function buatDiskonBertingkat() {
  double diskon = 0;
  return () {
    diskon += 5;
    return diskon;
  };
}

// Fungsi demo untuk tugas 5
void diskon_Bertingkat() {
  var hitungDiskon = buatDiskonBertingkat();

  print("Diskon pertama: ${hitungDiskon()}%");
  print("Diskon kedua  : ${hitungDiskon()}%");
  print("Diskon ketiga : ${hitungDiskon()}%");
}
diskon_Bertingkat();
}


