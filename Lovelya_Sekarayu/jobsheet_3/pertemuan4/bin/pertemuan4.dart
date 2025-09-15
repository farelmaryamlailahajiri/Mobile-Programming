import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

  void main(List<String> arguments) {
  // print('Hello world: ${jobsheet3.calculate()}!');

  // belajar fixed list
  var list = List<int>.filled(5,0); //List<int> digunakan untuk mengisi data integer.

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 13;
  // list[3] = 33;
  // list[4] = 23;
  // print("Data dalam list = $list");

  //list fixed
  // for (int i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan list ke-$i : ");
  //   var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
  //   list[i] = input!;
  // }

  // // Tampilkan hasil
  // print("Data dari list setelah diinput = $list");

  //growable list
  //var grow = [];
  // grow.add(20);
  // grow.add(40);
  // grow.add(55);
  // grow.add(60);
  // grow.remove(55);
  // grow.add(10);
  // print("Data dalam growable list = $grow");

  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan list ke-$i : ");
  //   var input = stdin.readLineSync();
  //   grow.add(int.parse(input == null || input.isEmpty ? '0' : input));
  // }
  // print("Data dalam list = $grow");

  // var grow = [];
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan list ke-$i : ");
  //   var input = stdin.readLineSync();
  //   if(input != null) {
  //     grow.add(input);
  //     print("Data data index ke: $i ${grow[i]}");
  //   }
  // }
  // print("Data dalam list = $grow"); 


  //SET
    // var angka = <int>{1,2,3,4,5};
    // print("Datanya adalah ${angka.elementAt(1)}");

    // var angka2 = <int>{4,5,6,7,8};
    // print("Data union adalah = ${angka.union(angka2)}");
    // print("Data intersection adalah = ${angka.intersection(angka2)}");
  
  //MAP
  // var biodata = {
  //   'NIM' : '2341760081',
  //   'Nama' : 'Lovelyta Sekarayu',
  //   'Jurusan' : 'Teknologi Informasi',
  //   'Nama' : 'Lovelyta Sekarayu' // ke replace
  // };
  // biodata['Nama'] = "2023"; // ke replace
  // print("Biodata Mahasiswa $biodata");
  // print("Nama = ${biodata['Nama']}");

  //Record
  // var Mahasiswa = ('Luqman', 40, true);
  // print("Ini data Pak Luqman : $Mahasiswa");
  // print("Mahasiswa = ${Mahasiswa.$1}");

  // var bio = (nama : "Lovelyta", umur : 20, gender : false);
  // print("Bio saya $bio");
  // print("Nama saya ${bio.nama}");

  tampil("Lovelyta", 20, "Malang");
  tampil("Luqman", 40);
  }
  //function parameter
  void tampil(String nama, int umur, [String? alamat]){
    print("Nama : $nama");
    print("Umur : $umur");
    if(alamat != null){
      print("Alamat : $alamat");
    } else {
      print("Alamat : -");
    }
  }
