import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  // Belajar Fixed List
  // var list = List<int>.filled(5, 0);

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 13;
  // list[3] = 33;
  // list[4] = 23;
  // // list[5] = 50;
  // print("Data dari list = $list");

  // // List Fixed
  // for (int i = 0; i <= 4; i++) {
  //   stdout.write('Masukkan data ke-$i : ');
  //   var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
  //   list[i] = input!;
  // }
  // print("Data dari list = $list");

  // Growable list
  // var grow = [];
  // grow.add(20);
  // grow.add(40);
  // grow.add(55);
  // grow.add(60);
  // grow.remove(55);
  // grow.add(10);

  // print("Data di dalam list = $grow");

  // for (var i = 0; i <= 4; i++) {
  //   stdout.write('Masukkan data ke-$i : ');
  //   var input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  //   grow.add(input);
  //   print("Data di dalam list = $grow");
  // }

  // var grow = [];
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write('Masukkan data ke-$i : ');
  //   var input = stdin.readLineSync();
  //   if (input !=null) {
  //     grow.add(input);
  //     print("Data index ke-$i : ${grow[i]}");
  //   }
  // }

  // print ("Data di dalam list = $grow");

  // Set
  // var angka = <int> {1,2,3,3,4,5};
  // print("Data nya adalah ${angka.elementAt(3)}");


  // var angka2 = <int> {4,5,6,7,8};
  // print ("Data union ${angka.union(angka2)}");
  // print ("Data intersection ${angka.intersection(angka2)}");

  var biodata = {
    'nim' : '123200045',
    'nama' : 'Muhammad Rizki',
    'umur' : 20,
  };
  biodata['alamat'] = 'Malang';

  print("biodata Mahasiswa = $biodata");
  print("NIM : ${biodata['nim']}");
}
