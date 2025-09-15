import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

//   //Belajar Fixed List
//   var list = List<int>.filled(5,0);
//   // list[5] = 100; //error karena index melebihi batas
//   print("Data dalam list : $list");
  
//   for (int i = 0; i < 5; i++) {
//     stdout.write("Masukkan data index ke-$i: ");
//     var input = stdin.readLineSync()?? '0';
//     if (input != null) {
//     int? value = int.tryParse(input);
//     list[i] = value ?? 0;
// }
//   }

//   print("Data dalam list: $list");


//growable list

// var grow = [10];
// grow.add(55);
// grow.add(30);
// grow.add(55);
// grow.add(50);
// grow.remove(55);

// print("Data dalam list: $grow");

var grow = [];
for (var i = 0; i < 5; i++) {
  stdout.write("Masukkan data index ke-$i: ");
  var input = stdin.readLineSync()?? '0';
  if (input != null) {
    grow.add(input);
  print("Data index ke-$i: ${grow[i]}");
  }
}
print("Data dalam list: $grow");

}

