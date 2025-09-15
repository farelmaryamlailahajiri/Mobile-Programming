import 'dart:io';

import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  //Belajar Fixed list
  var list = List<int>.filled(5, 0);
  list[0] = 10;
  list[1] = 20;
  list[2] = 30;
  list[3] = 40;
  list[4] = 50;
  print("data dalam list =  $list");

  for (var i = 0; i < 5; i++) {
    stdout.write("Masukkan data ke- $i : ");
    var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
    list[i] = input;
  }
  print("Data dari list setelah input = $list");

  //Belajar Growable list
}
