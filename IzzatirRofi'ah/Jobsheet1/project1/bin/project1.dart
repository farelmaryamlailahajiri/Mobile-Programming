import 'dart:io';

import 'package:project1/project1.dart' as project1;

const String name = 'Izzatir';
void main(List<String> arguments) {
  // print('Hello world: ${project1.calculate()}!');
  // satu line comment
  /*
  multi line comment
  banyak line comment
  */

  // constanta dan final
  final String name2 = 'Rofiah';
  print("Nama saya $name $name2");

  // variabel
  int umur = 20;
  double tinggi = 156.5;
  bool jenis_kelamin = false;
  String alamat = "Jl.Simpang Remujung NO.3";
  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  stdout.writeln("Jenis kelamin saya ${jenis_kelamin ? 'Laki-laki' : 'Perempuan'}");
  // if (jenis_kelamin == true) {
  //   stdout.writeln("Jenis kelamin saya Laki-laki");
  // } else {
  //   stdout.writeln("Jenis kelamin saya Perempuan");
  // }  
  stdout.writeln("Alamat rumah saya $alamat");

  // type data
  num nilai = 90.5;
  stdout.writeln("Nilai saya $nilai");
  dynamic bebas = 'true';
  stdout.writeln("Nilai dari dynamic adalah $bebas");
  String angka1 = '15';
  /* int angka2 = int.parse(angka1);
  int angka3 = bebas; */

  // list
  List <String> hobby = ['Memasak', 'Tidur', 'Scroll Sosmed'];
  hobby.add('Shopping');
  stdout.writeln("Hobbi saya adalah $hobby");

  // map
  Map <String,String> data = {
    "nama" : "Izza",
    "alamat" : "Blitar",
    "jenis_kelamin" : "Perempuan",
  };
  data["Pekerjaan"] = "Mahasiswa";
  data.addAll({"hoby" : "Membaca"});
  stdout.writeln("Data : $data");
  stdout.writeln("Nama yang ada didata ${data['nama']}");

  // operators
  // exception try
  try {
    // Code that might throw exception
    int result = 10 ~/ 0; // This will throw an IntegerDivisionByZeroException
  } on IntegerDivisionByZeroException {
    // Handles the specific exception IntegerDivisionByZeroException
    print('Cannot divide by zero!');
  } catch (e) {
    // Handles any other type of exception and provides the exception object/message
    print('An unexpected error occurred: $e');
  } finally {
    // Code that runs always executes, regardless of whether an exception occurred or not
    print('Execution complete.');
  }

  // null safety
  String? kendaraan;
  stdout.write("Kendaraan $kendaraan");

}