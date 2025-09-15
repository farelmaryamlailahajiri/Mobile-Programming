import 'package:project3/project3.dart' as project3;
import 'dart:io';

 void main(List<String> arguments) {
// print('Hello world: ${project3.calculate()}!');
var list = List<int>.filled(5, 0);

// list[0] = 10;
// list[1] = 20;
// list[2] = 30;
// list[3] = 40;
// list[4] = 50;
// // list[5] = 60; (error karena melebihi list)
// print("data dari list = $list ");

// list fixed menggunakan loop
for (int i = 0; i <= 4; i++) {
  stdout.write('masukkan data ke-$i : ');
  var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
  list[i] = input!;
} 
print("data dari list = $list ");

 }
