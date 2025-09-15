import 'dart:io';
import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  // Belajar Fixed List
  var list = List<int>.filled(5, 0);
  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 30;
  // list[3] = 40;
  // list[4] = 50;
  // list[5] = 60; list hanya 5, output list menjadi 0
  // print("Data dalam List = $list");

  // Perulangan Input List
  // for (int i = 0; i <= 4; i++) {
  //   stdout.write('Masukkan data ke-$i: ');
  //   var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
  //   list[i] = input!;
  // }
  // print("Data dari list input = $list");

  //Growable List
  // var Grow = [];
  // Grow.add(20);
  // Grow.add(30);
  // Grow.add(40);
  // Grow.add(50);
  // Grow.remove(40);
  // Grow.add(10);

  // print("Data di dalam list = $Grow");

  // Perulangan Growable List
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Data List ke-$i : ");
  //   var input = stdin.readLineSync();
  //   Grow.add(int.parse((input == null || input.isEmpty) ? "0" : input));
  //   }
  //   print("Data dalam list = $Grow");

  // Perulangan Growable nama
  var Grow = [];

  for (var i = 0; i <= 4; i++) {
    stdout.write("Data List ke-$i : ");
    var input = stdin.readLineSync();
    if(input != null) {
      Grow.add(input);
       print("Data dalam index ke = $i ${Grow[i]}");
    }
  }
  print('Data dalam list = $Grow');
}
