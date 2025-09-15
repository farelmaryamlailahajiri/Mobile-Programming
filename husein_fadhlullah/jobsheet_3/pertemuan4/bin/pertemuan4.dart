import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  //Belajar Fixed List
  var list = List<int>.filled(5,0);
  // list[5] = 100; //error karena index melebihi batas
  print("Data dalam list : $list");
  
  for (int i = 0; i < 5; i++) {
    stdout.write("Masukkan data index ke-$i: ");
    var input = stdin.readLineSync()?? '0';
    if (input != null) {
    int? value = int.tryParse(input);
    list[i] = value ?? 0;
}
  }

  print("Data dalam list setelah diubah: $list");
}

