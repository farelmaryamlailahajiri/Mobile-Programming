import 'package:jobsheet3/jobsheet3.dart' as jobsheet3;
import 'dart:io';

void main(List<String> arguments) {
  //print('Hello world: ${jobsheet3.calculate()}!');

  //Belajar Fixed List
  /*
  var list = List<int>.filled(5, 0);
  list[0] = 27;
  list[1] = 21;
  list[2] = 19;
  list[3] = 25;
  list[4] = 23;
  //list[5] = 28; //Eror karena disediakan tempat cuma 5
  print("Data dalam list = $list");
  */

  Map<int, int> list = {};

  for (int i = 1; i <= 3; i++) {
    stdout.write("Masukkan nilai List ke $i: ");
    var input = int.parse(stdin.readLineSync() ?? '') ?? 0;
    list[i] = input;
  }

  print("Data dalam urut list = $list");

  //Growable list
  var grow = [10];
  grow.add(20); //untuk menambah add
  grow.add(30);
  grow.add(40);
  grow.remove(50); //untuk menghapus remove

  print("Data dalam urut list = $grow");
}
