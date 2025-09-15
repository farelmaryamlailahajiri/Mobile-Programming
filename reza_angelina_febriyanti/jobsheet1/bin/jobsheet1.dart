import 'dart:io';

import 'package:jobsheet1/jobsheet1.dart' as jobsheet1;

const String nama = 'Reza'; //Constanta

void main(List<String> arguments) {
  //Komentar
  /*print('Hello world: ${jobsheet1.calculate()}!');*/

  //Final
  final String nama2 = 'Febriyanti';
  print('Nama saya $nama $nama2');

  //Tipe Data
  int umur = 20;
  double tinggi = 1.60;
  print('Umur saya: $umur Tahun');
  print('Tinggi saya: $tinggi Meter');

  dynamic gaji = 150000000;
  num gajiku = gaji;
  stdout.writeln('Gaji saya $gajiku');
  
  String hobi = 'Traveling';
  List<String> pekerjaan = ['Programmer', 'Konsultan'];
  pekerjaan.add("Pengusaha");

  stdout.writeln('Hobi saya $hobi');
  stdout.writeln('Pekerjaan saya $pekerjaan');

  Map<String, String> informasi = {
    'email': 'reza.angelina@gmail.com',
    'no_hp': '1234567890',
  };
  stdout.writeln('Informasi saya $informasi');

  //Operator
  if (umur <= 30) {
    print("Sukses di usia muda!");
  } else {
    print("Sukses di usia matang!");
  }

  //Exception
  try {
    int result = umur ~/ 0;
  } on IntegerDivisionByZeroException {
    print("Tidak bisa dibagi dengan 0");
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Program selesai");
  }

  //Null Safety
  String ? noPajak;
  print("Nomor Pajak: $noPajak");
}