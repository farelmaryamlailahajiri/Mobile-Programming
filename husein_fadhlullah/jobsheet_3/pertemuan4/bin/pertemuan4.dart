import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

//   //Belajar Fixed List
//   var list = List<int>.filled(5,0);
//   // list[5] = 100; //error karena index melebihi batas
//   print("Data dalam list : $list");
  
//   for (int i = 0; i < 5; i++) {
//     stdout.write("Masukkan data index ke-$i: ");
//     var input = stdin.readLineSync()?? '0';
//     if (input != null) {
//     int? value = int.tryParse(input);
//     list[i] = value ?? 0;
// }
//   }

//   print("Data dalam list: $list");


//growable list

// var grow = [10];
// grow.add(55);
// grow.add(30);
// grow.add(55);
// grow.add(50);
// grow.remove(55);

// print("Data dalam list: $grow");

// var grow = [];
// for (var i = 0; i < 5; i++) {
//   stdout.write("Masukkan data index ke-$i: ");
//   var input = stdin.readLineSync()?? '0';
//   if (input != null) {
//     grow.add(input);
//   print("Data index ke-$i: ${grow[i]}");
//   }
// }
// print("Data dalam list: $grow");

//latihan set


// var angka = <int>{1, 2, 3, 3, 4, 5};
// print("Data nya adalah ${angka.elementAt(1)}");


// var angka2 = <int>{4,5,6,7,8};
// print("Data nya union ${angka.union(angka2)}");
// print("Data nya intersection ${angka.intersection(angka2)}"); 

// map
// var biodata = {
//   'nim': '2341760134',
//   'nama': 'Husein',
//   'jurusan': 'Teknologi Informasi'
// };
// biodata['Angkatan'] = '2023';
// print("Biodata Mahasiswa $biodata");
// print("Biodata Mahasiswa dengan nama = ${biodata['nama']}");

//record
// var mahasiswa = ("Luqman", 40, true);
// print("ini data Pak Luqman : $mahasiswa");
// print("Mahasiswa = ${mahasiswa.$1}");

// var bio = (nama: "Husein Fadhlullah", umur: 20, status: true);
// print("Biodata = $bio");
// print("Nama Saya ${bio.nama}");

// Record x = (1, 2);
// print(x);


//  tampil("Husein", 20, "Malang");
//   tampil("Luqman", 40);

// Anonymous function
var nilai = [90, 80, 70, 100];
nilai.forEach((angka){
  print("Nilai = $angka");

});

}

//function parameter
// void tampil(String nama, int umur, [String? alamat]){
//   print("Nama : $nama");
//   print("Umur : $umur");
//   if (alamat != null) {
//     print("Alamat : $alamat");
//     }
//   }
