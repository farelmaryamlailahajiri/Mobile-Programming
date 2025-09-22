import 'dart:mirrors';

import 'package:project3/project3.dart' as project3;
import 'dart:io';
void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  //belajar fixed list
  // var list = List<int>.filled(5,0);
  // list[0] =10;
  // list[1] =20;
  // list[2] =30;
  // list[3] =40;
  // list[4] =50;
  // // list[5] =60; list tidak dibutuhkan
  // print("Data dari list = $list ");

  //fixed list dengan perulangan
  // for (int i = 0; i <= 4; i++){
  //   stdout.write("Masukkan data ke-$i :");
  //   var  input = int .tryParse(stdin.readLineSync() ?? '')?? 0;
  //   list[i] = input!;
  // }

  // print("Data dari list = $list");

  //growable list

  // var grow = [10];
  // grow.add(20);
  // grow.add(45);
  // grow.add(22);
  // grow.remove(22);
  // grow.add(10);

  // print("Data di dalam list = $grow");

  //menggunakan perulangan

  // var mahasiswa = [];
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan nilai mahasiswa ke index $i:");
  //   var input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  //   mahasiswa.add(input);
  // }
  // print("Data nilai mahasiswa = $mahasiswa");

  // dgn tipe data String
  // var grow = [];
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan list ke index $i:");
  //   var input = stdin.readLineSync();
  //   if(input !=null){
  //     grow.add(input);
  //     print("data index ke: $i ${grow[i]}");
  //   }
  // }
  // print("data dalam list: $grow");

  //belajar set
  // var angka = <int> {1,2,2,3,4,5};
  // print("Elemen ke-2 : ${angka.elementAt(1)}");

  // var angka2 = <int> {4,5,6,7,8};
  // print("Data Union adalah = ${angka.union(angka2)}");
  // print("Data intersection adalah = ${angka.intersection(angka2)}");

  //Map
  // var biodata = {
  //   "Nim" : "2341760073",
  //   "Nama" : "Bayu",
  //   "Prodi" : "SIB",
  //   "Nama" : "uyab"
  // };
  // // biodata['Angkatan'] = "2023"; //ke replace
  // print("Biodata Mahasiswa $biodata");
  // print("Nama ${biodata['Nama']}");

  //record

  // var mahasiswa = ("Luqman", 60, true);
  // print("Ini data Pak Luqman : $mahasiswa");
  // print("Mahasiswa = ${mahasiswa.$1}");

  // var bio = (nama:"Bayu", umur:21, gender:true);
  // print("bio saya $bio");
  // print("nama Saya ${bio.nama}");

  // tampil("Uyab", 21, "Jombang");

  var nilai = [90, 80, 60, 100];
  nilai.forEach((angka){
    print("Nilai = $angka");
});
  }


//function function
void  tampil(String nama, int umur, [String? alamat]){
  print("Nama : $nama");
  print("Umur : $umur");
  if (alamat != null){
    print("Alamat $alamat");
  }else {
    print("alamat : -");
  }
  
}
