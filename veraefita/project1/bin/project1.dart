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
}
