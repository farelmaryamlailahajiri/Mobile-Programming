import 'dart:io';

import 'package:jobsheet3/jobsheet3.dart' as jobsheet3;

void main(List<String> arguments) {
  // print('Hello world: ${jobsheet3.calculate()}!');

  // Belajar Fixed List digunakan untuk menyimpan data dengan jumlah tetap
  // var list = List<int>.filled(5,0); // Baris berikut digunakan untuk membuat fixed list dengan tipe data integer dan jumlah 5 elemen

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 30;
  // list[3] = 40;
  // list[4] = 50;
  // // list[5] = 100;
  // print("Data dari list = $list");

  var list = <int>[];

  for (int i = 0; i <= 4; i++) {
    stdout.write('Masukkan data ke-${i + 1}: ');
    var input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    list.add(input); // tambahkan elemen baru
  }
}
