import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  // Belajar Fixed List
  var list = List<int>. filled (5, 0);
  // list [0] = 10;
  // list [1] = 20;
  // list [2] = 13;
  // list[3] = 33;
  // list [4] = 23;
  // // list[40] = 60; //list tdk dibutuhkan dalam perulangan ini
  // print("Data dari list = $list ");

  // list fixed list menggunakan perulangan
  for (int i = 0; i <= 4; i++) {
      stdout.write("Masukkan list ke-$i : ");
      var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
      list[i] = input!;
  }
  print("Data dari list setelah input = $list");
}
