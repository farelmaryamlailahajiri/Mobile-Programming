import 'dart:io';
import 'package:project1/project1.dart' as project1;

const String nama = "Filla";

void main(List<String> arguments) {
  //COMMENTS
  // print('Hello world: ${project1.calculate()}!');
  // satu line comment
  /*
    multi line comment
    banyak line comment
  */

  //CONSTANTA & FINAL
  final String nama2 = "Roblax";
  print("Nama saya $nama $nama2");


  //VARIABEL
    int umur = 20;
  double tinggi = 170.5;
  bool jenis_kelamin = true; // true = laki-laki, false = perempuan
  String alamat = "Jl Karang Tengah RT/RW 06/01";
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
  dynamic bebas = "17";
  stdout.writeln("Nilai dari dynamic adalah $bebas");
  /*
    String angka1 = "15";
    int angka2 = int.parse(angka1);
    int angka3 = bebas;
  */

  // LIST
  List <String> hobby =["Roblox", "Roblox", "Roblox" , "Roblox", "Roblox", "Ngedit foto ayang"];
  hobby.add("ROBLOX");
  stdout.writeln("Hobby saya adalah $hobby");

  // MAP
  Map <String, String> data = {
    "nama" : "Masputih",
    "Alamat" : "Malang",
    "Jenis Kelamin" : "Laki-laki",
  };
    data["umur"] = "17";
  data.addAll({"hobi" : "R O B L O X"});
  stdout.writeln("Data : $data");
  stdout.writeln("Nama yang ada di data ${data['nama']}");

  // TRY CATCH
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

  // NULL SAFETY
  String? kendaraan;
  stdout.writeln("Kendaraan $kendaraan");

}
