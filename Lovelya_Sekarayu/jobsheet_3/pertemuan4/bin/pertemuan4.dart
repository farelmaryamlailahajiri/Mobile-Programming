import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

  void main(List<String> arguments) {
  // print('Hello world: ${jobsheet3.calculate()}!');

  // belajar fixed list
  var list = List<int>.filled(5,0); //List<int> digunakan untuk mengisi data integer.

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 13;
  // list[3] = 33;
  // list[4] = 23;
  // print("Data dalam list = $list");

  //list fixed
  // for (int i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan list ke-$i : ");
  //   var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
  //   list[i] = input!;
  // }

  // // Tampilkan hasil
  // print("Data dari list setelah diinput = $list");

  //growable list
  //var grow = [];
  // grow.add(20);
  // grow.add(40);
  // grow.add(55);
  // grow.add(60);
  // grow.remove(55);
  // grow.add(10);
  // print("Data dalam growable list = $grow");

  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan list ke-$i : ");
  //   var input = stdin.readLineSync();
  //   grow.add(int.parse(input == null || input.isEmpty ? '0' : input));
  // }
  // print("Data dalam list = $grow");

  var grow = [];
  for (var i = 0; i <= 4; i++) {
    stdout.write("Masukkan list ke-$i : ");
    var input = stdin.readLineSync();
    if(input != null) {
      grow.add(input);
      print("Data data index ke: $i ${grow[i]}");
    }
  }
  print("Data dalam list = $grow"); 
}