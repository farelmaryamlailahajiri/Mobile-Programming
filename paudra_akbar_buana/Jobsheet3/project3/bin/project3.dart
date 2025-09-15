import 'dart:io';

import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  //Belajar Fixed list
  // var list = List<int>.filled(5, 0);
  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 30;
  // list[3] = 40;
  // list[4] = 50;
  // print("data dalam list =  $list");

  // for (var i = 0; i < 5; i++) {
  //   stdout.write("Masukkan data ke- $i : ");
  //   var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
  //   list[i] = input;
  // }
  // print("Data dari list setelah input = $list");

  //Belajar Growable list
  // var grow = [];
  // grow.add(20);
  // grow.add(21);
  // grow.add(22);
  // grow.add(23);
  // grow.remove(22);
  // grow.add(20);
  // print("Data didalam list = $grow");

  // var mahasiswa = [];
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan nilai mahasiswa ke index $i:");
  //   var input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  //   mahasiswa.add(input);
  // }
  // print("Data nilai mahasiswa = $mahasiswa");

  // var nama = [];
  // for (int i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan nama mahasiswa ke- $i:");
  //   var input = stdin.readLineSync();
  //   nama.add(input);
  // }
  // print("Data nama mahasiswa = $nama");

  //Set
  var angka = <int>{1, 2, 2, 3, 3, 4, 5};
  print("ini adalah angka = ${angka.elementAt(3)}");

  var angka2 = <int>{4, 5, 6, 7, 8};
  print("Data Union = ${angka.union(angka2)}");
  print("Data Intersection = ${angka.intersection(angka2)}");
}
