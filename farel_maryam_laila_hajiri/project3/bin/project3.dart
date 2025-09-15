import 'package:project3/project3.dart' as project3;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  //belajar fix list
  var list = List<int>.filled(5, 0);

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 40;
  // list[3] = 30;
  // list[4] = 60;
  // // list[5] = 60; eror karena yang tersedia hanya 5
  // stdout.writeln("Data dari list: $list");

  //list fixed pakai perulangan
  for (int i = 0; i <= 4; i++) { 
    stdout.write('Masukkan data ke-$i: '); // Minta input dari user untuk isi list
    var input = int.tryParse(stdin.readLineSync() ?? "");// Membaca input user (String) lalu mengubahnya ke integer 
    list[i] = input ?? 0; // Menyimpan hasil input ke elemen list pada indeks ke-i (pakai ! karena kita yakin input bukan null)
  }

  stdout.writeln("Data dari list: $list");
}
