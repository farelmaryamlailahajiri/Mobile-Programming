import 'dart:io';
import 'package:project1/project1.dart' as project1;

const String nama = "Bayu";

void main(List<String> arguments) {
  // print('Hello world: ${project1.calculate()}!');

  // untuk 1 line

  /* untuk lebih dari 1 
  line
  */

  // final dan constanta
  final String nama2 = "Triwibowo";
  print("Nama Saya $nama $nama2");

  // variabel
  int umur = 21;
  double tinggi = 166.5;
  bool jenisKelamin = true; // true= laki-laki, false=perempuan
  String alamat = "Jombang";

  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  stdout.writeln(
    "Jenis kelamin saya ${jenisKelamin ? 'Laki-laki' : 'Perempuan'}"
  );

  // alternatif dengan if else
  // if (jenisKelamin == true) {
  //   stdout.writeln("Jenis Kelamin Saya Laki-laki");
  // } else {
  //   stdout.writeln("Jenis Kelamin Saya Perempuan"); 
  // }

  stdout.writeln("Alamat saya $alamat");
  // variabel part 2
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
  List <String> hobby =["Makan", "Ngopi", "Main ML", "Tidur"];
  hobby.add("Nonton");
  stdout.writeln("Hobby saya adalah $hobby");
  Map <String, String> data = {
    "nama" : "yabb",
    "Alamat" : "Jombang",
    "Jenis Kelamin" : "Laki-laki",
  };
  data["umur"] = "21";
  data.addAll({"hobi" : "nonton"});
  stdout.writeln("Data : $data");
  stdout.writeln("Nama yang ada di data ${data['nama']}");

  // try
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
  String ? kendaraan;
  stdout.writeln("Kendaraan $kendaraan");
}
