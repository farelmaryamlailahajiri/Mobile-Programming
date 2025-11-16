import 'dart:io';

import 'package:project1/project1.dart' as project1;
const String nama = 'm reishi';

void main(List<String> arguments) {
  //print('Hello world: ${project1.calculate()}!');
  // komen satu line
  /*komen
  banyak
  line
  */

  //CONSTANTA & FINAL
  final String nama2 = 'fauzi';

  print("Nama saya $nama $nama2");

  //VARIABEL
  int umur = 100;
  double tinggi = 172.5;
  bool jenis_kelamin = false;
  String alamat = "jln. DMC VII No.11 Bekasi";

  stdout.writeln("umur saya $umur tahun");
  stdout.writeln("tinggi saya $tinggi cm");
  stdout.writeln("jenis kelamin saya ${jenis_kelamin ? 'laki-laki' : 'perempuan'}",
    );
  /*
  if (jenis_kelamin==true) {
    stdout.writeln('Jenis kelamin saya Laki-laki');
  } else {
    stdout.writeln('Jenis kelamin saya Perempuan');
  }
  */
  stdout.writeln("alamat saya $alamat");

  //NUMBER VARIABEL
  num nilai = 85.5;
  stdout.writeln("nilai saya $nilai");
  dynamic bebas = 100;
  stdout.writeln("nilai dari dynamic adalah $bebas");
  String angka1 = "15";
  int angka2=int.parse(angka1);
  int angka3 = bebas;

  //LIST
  List <String> hobby = ['mancing', 'tidur', 'berenang'];
  hobby.add('ngokang');
  stdout.writeln('hobby saya $hobby');

  //MAP
  Map<String,String> data = {
    "nama" : "dian",
    "alamat" : "bekasi",
    "jenis_kelamin" : "perempuan"
  };
  data['pekerjaan'] = 'dosen';
  stdout.writeln("data : $data");
  stdout.writeln("nama yang ada di data ${data['nama']}");

  //EXCEPTION TRY
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

  //NULL SAFETY
  String? kendaraan;
  stdout.write('kendaraan $kendaraan');

}
