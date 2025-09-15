import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  //print('Hello world: ${pertemuan4.calculate()}!');

  //fixed list
  var list = List<int>.filled(5, 0);
  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 30;
  // list[3] = 40;
  // list[4] = 50;
  //list[5] = 88;  (tidak bisa karena sudah fix hanya 5)

  // print("data dari list: $list");

  //fixed dengan input dan perulangan
  for (int i = 0; i <= 4; i++) {
    stdout.write('masukan data ke-$i : ');
    var input = int.tryParse(stdin.readLineSync()?? '');
    list[i] = input!;

    print("data dari list setelah di input: $list");
  }  

}
