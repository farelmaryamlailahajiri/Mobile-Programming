import 'dart:io';

import 'package:project1/project1.dart' as project1;
const String nama = 'Maisya';

void main(List<String> arguments) {
  //print('Hello world: ${project1.calculate()}!');
  //satu line comment
  /*
  multi line comment
  banyak line comment
  */
  //constanta and final
  final String nama2 = 'Dhia' ;
  print(" nama saya $nama $nama2");
  //tipe data
  //variabel
  int umur = 20;
  double tinggi = 159;
  bool jenis_kelamin = true; //true = perempuan 
  String alamat = 'Malang';
  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  stdout.writeln("Jenis kelamin saya ${jenis_kelamin ? 'Perempuan' : 'Laki-laki'}");
  // if(jenis_kelamin==true){
  //   stdout.writeln("Jenis kelamin saya Perempuan");
  // }else{
  //   stdout.writeln("Jenis kelamin saya Laki-laki");
  // }
  stdout.writeln("Alamat saya $alamat");
  num nilai = 90.5;
  stdout.writeln("Nilai saya $nilai");
  dynamic bebas = "16";
  stdout.writeln("Nilai dari dynamic adalah $bebas");
  // String angka1 = "15" ;
  // int angka2 = int.parse(angka1);
  // int angka3 = bebas;
  // list
  List<String>hobby = ["Bernyanyi", "Bermain" , "Belajar"];
  hobby.add ("Shopping");
  stdout.writeln("Hobby saya adalah $hobby");
  Map<String, String> data = {
  "nama": "Mei" ,
  "alamat" : "Malang",
  "jenis_kelamin": "Perempuan",
  };
  data ['"pekerjaan"'] = "Mahasiswa" ;
  data.addAll ({"hobi": "Membaca"});
  stdout.writeln ("Data : $data");
  stdout.writeln("Nama yg ada di data ${data[ 'nama']}");
  try {
  // Code that might throw an exception
  int result = 10 ~/ 0; // This will throw an IntegerDivisionByZeroException
  } on IntegerDivisionByZeroException {
  // Handles the specific IntegerDivisionByZeroException
  print("Cannot divide by zero!");
  } catch (e) {
  // Handles any other type of exception and provides the exception object
  print("An unexpected error occurred: $e");
  } finally {
  // Code that always executes, regardless of whether an exception occurred
  print("Execution complete.");
  }
}
