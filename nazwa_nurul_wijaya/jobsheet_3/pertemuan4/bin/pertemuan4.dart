import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  // //Belajar Fixed List
  var list = List.filled(5, 0);

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 13;
  // list[3] = 33;
  // list[4] = 23;
  // // list[5] = 50; //error karena index melebihi ukuran list
  // print("Data dalam list = $list");

  // list fixed perulangan input
   for (int i = 0; i < list.length; i++) {
    stdout.write('Masukkan data ke-$i: ');
    var input = int.tryParse(stdin.readLineSync() ?? '');
    list[i] = input ?? 0; 
  }

  print("Data dari list setelah input = $list");

}