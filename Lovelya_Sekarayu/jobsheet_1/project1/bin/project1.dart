import 'dart:io';

import 'package:project1/project1.dart' as project1;

const String nama = 'Lovelyta';
void main(List<String> arguments) {
  //print('Hello world: ${project1.calculate()}!');
  //satu line comment
  /* multi line comment */
  
  //constanta dan final
  final String nama2 = 'Sekarayu';
  print("Nama saya $nama $nama2");

  //variabel
  int umur = 45;
  double tinggi = 165.5;
  bool jenis_kelamin = false; //true = laki-laki, false = perempuan
  String alamat = 'Jl. Merdeka No. 45';
  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  stdout.writeln(
    "Jenis kelamin saya ${jenis_kelamin ? 'Laki-laki' : 'Perempuan'}"
    );
  // if (jenis_kelamin==true) {
  //   stdout.writeln("Jenis kelamin saya Laki-laki");
  // } else {
  //   stdout.writeln("Jenis kelamin saya Perempuan");
  // }
  stdout.writeln("Alamat saya $alamat");

  num nilai = 90.5; //bisa menerima 2 nilai int atau double
  stdout.writeln("Nilai saya $nilai");
  dynamic bebas = "16"; //bisa menerima semua tipe data
  stdout.writeln("Nilai dari dynamic adalah $bebas");
  // String angka1 = "15";
  // int angka2 = int.parse(angka1);
  // int angka3 = bebas;

  //list
  List<String> hobby = ['Mancing', 'Tidur', 'Ngoding'];
  hobby.add('Shopping');
  stdout.writeln("Hobby saya adalah $hobby");
  Map<String, String> data = {
    'nama': 'Lovelyta Sekarayu',
    'alamat': 'Malang',
    'jenis_kelamin': 'Perempuan'
  };
  data['pekerjaan'] = 'Mahasiswa';
  data.addAll({'hobi': 'Membaca'});
  stdout.writeln("Data : $data");
  stdout.writeln("Nama yang ada di data : ${data['nama']}");

  //exception
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
  
  //Null safety
  String? kendaraan;
  stdout.writeln("Kendaraan $kendaraan");
}