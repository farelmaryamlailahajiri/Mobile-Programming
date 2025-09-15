import 'dart:io';

import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  // Belajar Fixed List
  // var list = List<int>.filled(5, 0);

  // // list[0] = 10;
  // // list[1] = 20;
  // // list[2] = 30;
  // // list[3] = 40;
  // // list[4] = 50;
  // // // list[5] = 60; // error karena index melebihi panjang list
  // // print("Data dari list = $list");

  // // Input Data ke Dalam Fixed List
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan data ke index $i:");
  //   var input = int.tryParse(stdin.readLineSync()?? '') ?? 0;
  //   list[i] = input;
  // }
  //   print("Data dari list = $list");

  // Belajar Growable List
  // var grow = [10];
  // grow.add(20);
  // grow.add(30);
  // grow.add(40);
  // grow.add(50);
  // grow.remove(40);
  // grow.add(10);
  // print("Data dari growable list = $grow");

  // var mahasiswa = [];
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan nilai mahasiswa ke index $i:");
  //   var input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  //   mahasiswa.add(input);
  // }
  // print("Data nilai mahasiswa = $mahasiswa");

  // var nama = [];
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan nama ke index $i:");
  //   var input = stdin.readLineSync() ?? '';
  //   nama.add(input);
  // }
  // print("Data nama mahasiswa = $nama");

  // Set
  // var angka = <int>{1, 2, 3, 3, 4, 5};
  // print("Data dari set = ${angka.elementAt(3)}");
 
  // var angka2 = <int> {4, 5, 6, 7, 8};
  // print("Data union adalah = ${angka.union(angka2)}");
  // print("Data intersection adalah = ${angka.intersection(angka2)}");

  // map
  // var biodata = {
  //   "nim": "2341760094",
  //   "nama": "Audric",
  //   "jurusan": "Teknologi Informasi"
  // };
  // biodata.addAll({"angkatan": "2023"});
  // print("Data biodata = $biodata");
  // print("Nama Mahasiswa = ${biodata['nama']}");

  // record
  // var mahasiswa = ("audric", 20, true);
  // print("Biodata mahasiswa = $mahasiswa");
  // print("Nama mahasiswa = ${mahasiswa.$1}");

  // var bio = (nama : "audric", umur: 20, gender: true);
  // print("Biodata mahasiswa = $bio");
  // print("Nama mahasiswa = ${bio.nama}");

  // function parameter
//   tampil("Audric", 20);
//   tampil("tnx", 26, "Sidoarjo");
// }

// void tampil(String nama, int umur, [String? alamat]){
//   print("Nama : $nama");
//   print("Umur : $umur");
//   if (alamat != null) {
//     print("Alamat : $alamat");
//   } else {
//     print("Alamat : -");
//   }
}