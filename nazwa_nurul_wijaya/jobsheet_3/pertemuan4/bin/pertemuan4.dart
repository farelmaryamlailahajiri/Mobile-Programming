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
  //  for (int i = 0; i < list.length; i++) {
  //   stdout.write('Masukkan data ke-$i: ');
  //   var input = int.tryParse(stdin.readLineSync() ?? '');
  //   list[i] = input ?? 0; 
  // }

  // print("Data dari list setelah input = $list");

  //growable list
  //   var grow = [10];
  //   grow.add(20);
  //   grow.add(30);
  //   grow.add(40);
  //   grow.add(50);
  //   grow.remove(50);
  //   grow.add(10);
  // print("Data dalam list = $grow"); 

  // var grow = <int>[]; 

  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Data List ke-$i: ");
  //   var input = stdin.readLineSync();
  //   var value = int.tryParse(input ?? '') ?? 0;

  //   grow.add(value);
  // }

  // print("Data dalam list = $grow");

   var grow = <String>[]; 

  for (var i = 0; i <= 4; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    var input = stdin.readLineSync();
    if (input != null) {
      grow.add(input); 
      print('data index ke: $i ${grow[i]}');
    }
  }
  print("\nData mahasiswa dalam list = $grow");
}