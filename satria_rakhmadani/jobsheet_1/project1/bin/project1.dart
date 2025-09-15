import 'dart:io';

import 'package:project1/project1.dart' as project1;
const String nama = "Satria";

void main(List<String> arguments) {
  // print('Hello world: ${project1.calculate()}!');
  // satu line comment
  /*
    multi line comment
    banyak line comment
  */
  
  //constanta dan final
  final String nama2 = 'Rakhmadani';
  print("Nama saya $nama $nama2");

  //variabel
  int umur = 20;
  double tinggi = 167.6;
  bool jenis_kelamin = true; //true = laki-laki, false = perempuan
  String alamat = "Permata Tunggulwulung";
  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  stdout.writeln("Jenis kelamin saya ${jenis_kelamin ? 'Laki-laki' : 'Perempuan'}");
  // if(jenis_kelamin==true){
  //   stdout.writeln("Jenis kelamin saya Laki-laki");
  // } else {
  //   stdout.writeln("Jenis kelamin saya Perempuan");
  // }
  stdout.writeln("Alamat saya $alamat");

  //tipe data
  num nilai = 100; //num bisa menampung int dan double
  stdout.writeln("Nilai saya $nilai");
  dynamic bebas = "16"; //dynamic bisa menampung semua tipe data
  stdout.writeln("Nilai dari dynamic adalah $bebas");
  // String angka1 = "15";
  // int angka2 = int.parse(angka1);
  // int angka3 = bebas;
  // stdout.writeln("Hasil penjumlahan angka2 + angka3 = ${angka2 + angka3}");

  //list
  List<String> hobby = ["Mancing", "Tidur", "Ngoding", "Desain UI/UX", "Desain Grafis"];
  hobby.add("Shopping");
  stdout.writeln("Hobby saya adalah $hobby");

  //map
  Map<String, String> data = {
    "nama": "Rakhmadani", 
    "alamat": "Permata Tunggulwulung", 
    "jenis_kelamin": "Laki-Laki", 
  };
  data["pekerjaan"] = "Mahasiswa";
  data.addAll({"hobi": "Ngoding"});

  stdout.writeln("Data: $data");
  stdout.writeln("Nama yang ada di data ${data['nama']}");


  try {
      // Code that might throw an exception
      int result = 10 ~/ 0; // This will throw an IntegerDivisionByZeroException
      print(result);
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

  String? kendaraan;
  stdout.writeln("Kendaraan $kendaraan");
  }

  