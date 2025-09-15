import 'dart:io';

import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  //FIXED LIST
  // var list = List<int>.filled(5, 0);

  // // list[0] = 10;
  // // list[1] = 20;
  // // list[2] = 13;
  // // list[3] = 33;
  // // list[4] = 23;
  // // list[5] = 43; list tidak dibutuhkan

  // print("Data Dalam List = $list ");

  // //diubah jadi inputan
  // for (int i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan data ke-$i: ");
  //   var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
  //   list[i] = input!;
  // }
  // print("Data dari list setelah input = $list");

  //GROWABLE LIST
  // var grow = [10];
  // grow.add(20);
  // grow.add(40);
  // grow.add(55);
  // grow.add(60);

  // grow.remove(55);

  // grow.add(60);

  // print("Data di dalam list = $grow");

  //NYOBA LAGI

  var mahasiswa = [];
  for (var i = 0; i <= 4; i++) {
    stdout.write("Masukkan nilai mahasiswa ke index $i:");
    var input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    mahasiswa.add(input);
  }
  print("Data nilai mahasiswa = $mahasiswa");
}


