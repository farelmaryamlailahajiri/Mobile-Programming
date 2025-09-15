import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  // Belajar Fixed List
  var list = List<int>.filled(5, 0);

  list[0] = 10;
  list[1] = 20;
  list[2] = 13;
  list[3] = 33;
  list[4] = 23;
  // list[5] = 50;
  print("Data dari list = $list");

  // List Fixed
  for (int i = 0; i <= 4; i++) {
    stdout.write('Masukkan data ke-$i : ');
    var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
    list[i] = input!;
  }
  print("Data dari list = $list");
}
