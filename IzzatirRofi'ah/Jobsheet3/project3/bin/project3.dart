import 'dart:io';
import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  // Belajar Fixed List
  var list = List<int>.filled(5, 0);
  
  // list[0] = 10;
  // list[1] = 11;
  // list[2] = 12;
  // list[3] = 13;
  // list[4] = 14;
  // // list[5] = 15; // error karena hanya berisi 5 data
  
  // print("Data dalam list = $list");

  // Fixed List dengan inputan
  for (int i = 0; i <=4; i++) {
    stdout.write("Masukkan data ke-$i : ");
    var input = int.tryParse(stdin.readLineSync()?? '') ?? 0;
    list[i] = input!;
  }

  print("Data dari list setelah input = $list");
}
