import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  // Belajar Fixed List
  // var list = List<int>. filled (5, 0);
  // list [0] = 10;
  // list [1] = 20;
  // list [2] = 13;
  // list[3] = 33;
  // list [4] = 23;
  // // list[40] = 60; //list tdk dibutuhkan dalam perulangan ini
  // print("Data dari list = $list ");

  // list fixed list menggunakan perulangan
  // for (int i = 0; i <= 4; i++) {
  //     stdout.write("Masukkan list ke-$i : ");
  //     var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
  //     list[i] = input!;
  // }
  // print("Data dari list setelah input = $list");

  //growable
  // var grow = [10];
  // grow. add (20);
  // grow. add (40);
  // grow. add (55);
  // grow. add (60);
  // grow. remove (55);
  // grow. add (10);
  // print("Data di dalam list = $grow ");

  //growable list dengan for loop
  // var grow = [];
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Data List ke-$i : ");
  //   var input = stdin.readLineSync();
  //   grow.add(int.parse((input == null || input.isEmpty) ? "0" : input));
  //   }
  //   print("Data dalam list = $grow");
  // }

// var grow = [];
//   for (var i = 0; i <= 4; i++) {
//     stdout.write("Masukkan list ke-$i : ");
//     var input = stdin.readLineSync();
//     if(input != null) {
//       grow.add(input);
//       print("Data data index ke: $i ${grow[i]}");
//     }
//   }
//   print("Data dalam list = $grow");
// }

//Set
    var angka = <int>{1,2,3,3,4,5,6};
    print("Data nya adalah ${angka.elementAt(3)}");
}


