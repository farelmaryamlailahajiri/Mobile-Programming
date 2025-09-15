import 'dart:io';
import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  // Belajar Fixed List
  // var list = List<int>.filled(5, 0);
  
  // list[0] = 10;
  // list[1] = 11;
  // list[2] = 12;
  // list[3] = 13;
  // list[4] = 14;
  // // list[5] = 15; // error karena hanya berisi 5 data
  
  // print("Data dalam list = $list");

  // Fixed List dengan inputan
  // for (int i = 0; i <=4; i++) {
  //   stdout.write("Masukkan data ke-$i : ");
  //   var input = int.tryParse(stdin.readLineSync()?? '') ?? 0;
  //   list[i] = input!;
  // }

  // print("Data dari list setelah input = $list");

  // Growable List
  // var grow = [10];

  // grow.add(20);
  // grow.add(30);
  // grow.add(40);
  // grow.add(50);
  // grow.remove(55);
  // grow.add(30);

  // print("Data di dalam grow list : $grow");

  // Growable List dengan inputan
  // var grow = [];

  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Data List ke-$i : ");
  //   var input = stdin.readLineSync();
  //   grow.add(int.parse((input == null || input.isEmpty) ? "0" : input));
  //   }

  //   print("Data dalam list = $grow");

  // Growable List string
  // var grow = [];

  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Data List ke-$i : ");
  //   var input = stdin.readLineSync();
  //   if(input != null){
  //     grow.add(input);
  //     print("Data index ke-$i ${grow[i]}");
  //   }
  //   }

  //   print("Data dalam list = $grow");

  // Set
  // var angka = <int> {1, 2, 3, 3, 4, 5};
  // print("Data nya adalah ${angka.elementAt(1)}");

  // Union = penggabungan
  // var angka2 = <int> {4, 5, 6, 7, 8};
  // print("Data union adalah : ${angka.union(angka2)}");
  // Intersection = irisan
  // print("Data intersection adalah : ${angka.intersection(angka2)}");

  // map
  // var biodata = {
  //   "Nim" : "2341760010",
  //   "Nama" : "Izzatir Rofi'ah",
  //   "Jurusan" : "Teknologi Informasi",
  // "Nama" : "Izzatir" // ke replace
  // };

  // biodata["Angkatan"] = "2023";
  // // biodata["Nama"] = "2023"; // ke replace

  // print("Biodata Mahasiswa $biodata");
  // print("Biodata Mahasiswa dengan Nama : ${biodata['Nama']}");

  // Record
  var mahasiswa = ("Luqman", 40, true);
  print("Ini Data Pak Luqman $mahasiswa");
  print("Mahasiswa = ${mahasiswa.$1}");

  var bio = (nama : "Izzatir Rofi'ah", umur : 20, gender : false);
  print("Biodata saya $bio");
  print("Nama saya ${bio.nama}");
}