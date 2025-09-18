import 'dart:io';

import 'package:project1/project1.dart' as project1;

const String nama = 'Haura';

void main(List<String> arguments) {
  //memberi komentar
  // print('Hello world: ${project1.calculate()}!');
  //satu line comment
  /*
  multi line comment
  banyak komen line
  */

  // constanta dan final
  final String nama2 = 'Archia';
  // nama2 = "sara"; error, final tidak bisa diubah.
  print("Nama saya $nama $nama2");

  //variable
  int umur = 20;
  double tinggi = 155.5;
  bool jenis_kelamin = false; //true laki-laki, false perempuan
  String alamat = 'Jl. Bunga andong timur No. 6a';
  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  stdout.writeln(
    "Jenis kelamin saya ${jenis_kelamin ? 'Laki-laki' : 'Perempuan'}",
  );
  // if (jenis_kelamin == true) {
  //   stdout.writeln("Jenis Kelamin saya Laki-laki");
  // } else {
  //   stdout.writeln("Jenis Kelamin saya Perempuan");
  // }
  stdout.writeln("Alamat saya $alamat");

  //number
  num nilai = 90.5; //bisa diisi int atau double
  stdout.writeln("Nilai saya $nilai");
  dynamic bebas = "16";
  stdout.writeln("Nilai dari dynamic adalah $bebas");
  // String angka1 = "15"; //dibaca satu lima
  // int angka2 = int.parse(angka1);
  // int angka3 = bebas;

  //List
  List<String> hobby = ["tidur", "makan", "mancing"];
  hobby.add("shopping");
  stdout.writeln("Hobby saya adalah $hobby");

  //Map
  Map<String, String> data = {
    //<String, String> bisa diganti <String, int>
    "nama": "haura", //sebagai label
    "alamat": "Malang",
    "jenis_kelamin": "Perempuan",
  };
  data["pekerjaan"] = "Dosen";
  data.addAll({"hobi": "membaca"});

  stdout.writeln("Data $data");
  stdout.writeln("Nama yang ada di data ${data['nama']}");

  //null safety (menambahkan ? pada akhir tipe data)
  String? kendaraan;
  stdout.write("kendaraan $kendaraan");
}
