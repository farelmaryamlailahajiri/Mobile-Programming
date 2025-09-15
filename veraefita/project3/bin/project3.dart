import 'package:project3/project3.dart' as project3;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${jobsheet3.calculate()}!');

//   // belajar fixed list
//   var list = List<int>.filled(5, 0); // List<int> digunakan untuk mengisi data integer.

//   list[0] = 10;
//   list[1] = 20;
//   list[2] = 30;
//   list[3] = 40;
//   list[4] = 50;
//   // list[5] =60; list tidak boleh melebihi 5
//   print("Data dalam list = $list ");

//  // for fixed
//   for (int i = 0; i <=4; i++) {
//     stdout.write("Masukkan list ke-${i + 1}: ");
//     var input = int.tryParse(stdin.readLineSync()?? '') ?? 0; // null safety operator (!);

//     list[i] = input!;
//   }

//   // Tampilkan hasil
//   stdout.writeln("Data dalam list = $list");

  // growable list

  // var grow =[10];
  // grow.add(20);
  // grow.add(40);
  // grow.add(55);
  // grow.add(60);
  // grow.remove(55);
  // grow.add(10);
  // // print("Data di dalam list = $grow");

  // for (var i =0; i<= 4; i++){
  //   stdout.write("Masukkan data ke-${i+1}: ");
  //   var input = int.tryParse(stdin.readLineSync()?? '') ?? 0;
  //   grow.add(input);
  // }
  //  print("Data di dalam list = $grow");


   //growable kedua
  // var grow = [];
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan list ke-$i : ");
  //   var input = stdin.readLineSync();
  //   if (input != null) {
  //     grow.add(input);
  //     print("Data index ke-$i = ${grow[i]}");
  //   }
  // }
  // print("Data dalam list = $grow");

  // var angka= <int> {1,2,3,4,5};
  // print("Data nya adalah ${angka.elementAt(1)}");

  // var angka2= <int> {4,5,6,7,8};
  // print("Data Union Adalah = ${angka.union(angka2)}");
  // print("Data intersection Adalah = ${angka.intersection(angka2)}");

// Map
    var biodata = {
      "nim" : "2341760047",
      "nama": "vera",
      "Jurusan" : "Teknologi Informasi",
      "nama" : "efita" // replace
    };
    // biodata['Nama'] = "2023"; //ke replace
    print("Biodata Mahasiswa $biodata");
    print("Biodata Mahasiswa = ${biodata['nama']}");
}
  

