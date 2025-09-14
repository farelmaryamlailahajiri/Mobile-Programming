import 'dart:io';

import 'package:project1/project1.dart' as project1;

const String nama = 'Rafif';
void main(List<String> arguments) {
  //print('Hello world: ${project1.calculate()}!');
  //satu line
  /*
  multi line
  banyak line
  */

  //constanta dan final
  final String nama2 = 'Tri';
  print("Nama saya $nama $nama2");

  // variabel
  int umur =20 ;
  double tinggi = 175.0;
  bool jenis_kelamin = true; // true = laki-laki, false = perempuan
  String alamat = 'Jl. Kedawung No. 37B';
  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  stdout.writeln(
    "Jenis kelamin saya ${jenis_kelamin ? "Laki-laki" : "Perempuan"}"
  );
  // if (jenis_kelamin == true) {
  //   stdout.writeln("Jenis kelamin saya Laki-laki");
  // } else {
  //   stdout.writeln("Jenis kelamin saya Perempuan");
  // }           
  stdout.writeln("Alamat saya $alamat");
  num nilai = 90.5; // bisa menampung int dan double
  stdout.writeln("Nilai saya $nilai");
  dynamic bebas = "16";
  stdout.writeln("Nilai dari dynamic adalah $bebas");
  /*
    String angka1 = "15";
    int angka2 = int.parse(angka1);
    int angka3 = bebas;
  */

  // list
  List <String> hobby =["Mendegarkan musik", "Membaca", "Tidur"];
  hobby.add("Menonton film");
  stdout.writeln("Hobby saya adalah $hobby");

  // map
  Map <String, String> data = {
    "nama" : "Budi",
    "Alamat" : "Malang",
    "Jenis Kelamin" : "Laki-laki",
  };
  data["pekerjaan"] = "Dosen";
  data.addAll({"hobi" : "Memancing"});
  stdout.writeln("Data : $data");
  stdout.writeln("Nama yang ada di data ${data['nama']}");

  // Try Catch
  try {
    // Code that may throw an error
    int result = 10 ~/ 0; // This will throw an IntegerDivisionByZeroException
  } on IntegerDivisionByZeroException {
    // Handles the specific exception IntegerDivisionByZeroException
    print('Error: Cannot divide by zero!');
  } catch (e) {
    // Handles any other type of exception and provides the exception object/message
    print('An error occurred: $e');
  } finally {
    // Code that runs always executes, regardless of whether an exception occurred or not
    print('Execution completed.');
  }

  // null safety
  String? kendaraan;
  stdout.writeln("Kendaraan $kendaraan");
}
