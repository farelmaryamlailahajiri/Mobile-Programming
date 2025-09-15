import 'dart:io';

import 'package:project1/project1.dart' as project1;

const String nama = 'Husein';
void main(List<String> arguments) {
  //print('Hello world: ${project1.calculate()}!');
  //satu line
  /*
  multi line
  banyak line
  */
  //constanta dan final
  final String nama2 = 'Affandi';
  print("Nama saya $nama $nama2");
  
  //variabel
  int umur = 20;
  double tinggi = 165.5;
  bool jenisKelamin = true; //true laki-laki, false perempuan
  String alamat = 'Jl. Merdeka No. 1';
  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  // stdout.writeln("Jenis kelamin saya ${jenisKelamin ? 'Laki-laki' : 'Perempuan'}");
  if (jenisKelamin) {
    stdout.writeln("Jenis kelamin saya Laki-laki");
  } else {
    stdout.writeln("Jenis kelamin saya Perempuan");
  }
  stdout.writeln("Alamat saya $alamat");
  num nilai = 90.5; //bisa int atau double
  stdout.writeln("Nilai saya $nilai");
  dynamic bebas = "true";
  stdout.writeln("Nilai dari dynamic adalah $bebas");
  // String angka1 = "15";
  // int angka2 = int.parse(angka1);
  // int angka3 = bebas;
  //list
  List<String> hobby = ['Membaca', 'Menulis', 'Coding'];
  hobby.add("Shopping");
  stdout.writeln("Hobby saya: $hobby");

  Map<String,String> data = {
  "nama": "Dia",
  "alamat": "Jl. Merdeka No. 1",
  "jenisKelamin": "Perempuan",
  "umur": "20"
  };
  data["pekerjaan"] = "Mahasiswa";
  data.addAll({"hobi": "Membaca"});

  stdout.writeln("Data : $data");
  stdout.writeln("Nama yang ada di data ${data['nama']}");

  try {
    int result = 10 ~/ 0;
  } on IntegerDivisionByZeroException {
    print('Tidak bisa membagi dengan nol');
  } catch (e) {
    print('Terjadi kesalahan: $e');
  } finally {
    print('Eksekusi selesai');
  }

  String? kendaraan;
  stdout.writeln("kendaraan $kendaraan ");
}

