import 'package:project3/project3.dart' as project3;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  // belajar fixedList
  var list = List<int>.filled(5, 0);

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 30;
  // list[3] = 40;
  // list[4] = 50;  
  // list[5] = 60;  

  for (int i = 0; i <= 4; i++) {
    stdout.write("Masukkan data ke-$i: ");
    var input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    list[i] = input;
  }

  print("Data dari list = $list ");

  
}
