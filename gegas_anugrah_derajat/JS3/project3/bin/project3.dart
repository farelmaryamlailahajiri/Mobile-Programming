import 'dart:ffi';

import 'package:project3/project3.dart' as project3;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  // // belajar fixedList
  // var list = List<int>.filled(5, 0);

  // // list[0] = 10;
  // // list[1] = 20;
  // // list[2] = 30;
  // // list[3] = 40;
  // // list[4] = 50;  
  // // list[5] = 60;  

  // for (int i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan data ke-$i: ");
  //   var input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  //   list[i] = input;
  // }

  // print("Data dari list = $list ");

  // growable list

  // var grow = [];
  // // grow.add(20);
  // // grow.add(40);
  // // grow.add(55);
  // // grow.add(60);
  // // grow.remove(55);
  // // grow.add(10);

  // // print("Data di dalam list = $grow ");
  
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Data list ke-$i : ");
  //   var input = stdin.readLineSync() ?? '';
  //   grow.add(input);
  // }
  // print("Data nama mahasiswa = $grow");

  // var angka = <int> {1,2,3,3,4,5};
  // // print("Data adalah : ${angka.elementAt(1)}");

  // var angka2 = <int> {4,5,6,7,8};
  // print("Data union adalah = ${angka.union(angka2)}");
  // print("Data intersection adalah = ${angka.intersection(angka2)}");

  // map
  // var biodata = {
  //   "nim" : "2341760140",
  //   "nama" : "Gegas Anugrah",
  //   "jurusan" : "teknologi informasi",

  // };
  // biodata["angkatan"] = '2023';
  // print("Biodata mahasiswa : $biodata");
  // print("Nama mahasiswa : ${biodata['nama']}");
  
  // record
  // var mahasiswa = ("Luqman", 40, true);
  // print("Data Pak Luqman : $mahasiswa");
  // print("Nama mahasiswa = ${mahasiswa.$1}");

  // var bio = (nama : "Gegas", umur : 21, gender : true);
  // print("data saya : $bio");
  // print("nama saya : ${bio.nama}");

  // function
  tampil("Luqman", 40, "Malang");
  tampil("Gegas", 20);

}

  void tampil(String nama, int umur, [String? alamat]) {
    print("Nama : $nama");
    print("Umur : $umur");
    if (alamat != null) {
      print("Alamat : $alamat");
    } else{
      print("Alamat : -");
    }
  }
