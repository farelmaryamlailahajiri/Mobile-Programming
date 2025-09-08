import 'dart:io';

import 'package:project1/project1.dart' as project1;

const String nama = 'vera';
void main(List<String> arguments) {
  //print('Hello world: ${project1.calculate()}!');
  //satu line comment
  /*
*/
  // 1. COMMENTS
  // -----------------------
  // Ini adalah single-line comment
  /* Ini adalah 
     multi-line comment */
  /// Ini adalah documentation comment (biasanya untuk docs otomatis)
   
   // 2. constants & final
   final String nama2 ='efita';
   print("Nama saya $nama $nama2");

   //3. variable
   int umur = 20;
   double tinggi = 153.5;
   bool jenis_kelamin = false; // true=laki2, false=perempuan}
   String alamat = 'Tuban';
   stdout.writeln("Umur saya $umur tahun");
   stdout.writeln("Tinggi saya $tinggi cm");
   stdout.writeln("Jenis kelamin saya ${jenis_kelamin ? 'laki-laki' : 'perempuan'}"); 
   stdout.writeln("Alamat saya di $alamat");

  //4. type data
  num nilai = 90.5; // bisa diisi int dan double
  stdout.writeln("Nilai saya $nilai");

  dynamic bebas = "22";
  stdout.writeln("Nilai dari dynamic adalah $bebas");//lebih global dari pd num
  
    // String angka1 = "15";
    // int angka2 = int.parse(angka1);
    // int angka3 = bebas;
  

  // list
  List <String> hobby =["masak", "rapat", "tidur"];
  hobby.add("nonton");
  stdout.writeln("Hobby saya adalah $hobby");

  // map
  Map <String, String> data = {
    "nama" : "vera",
    "Alamat" : "tuban",
    "Jenis Kelamin" : "perempuan",
  };
  data["umur"] = "20";
  data.addAll({"hobi" : "Masak"});
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
}
