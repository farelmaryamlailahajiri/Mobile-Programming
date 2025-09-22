import 'dart:io'; // import berikut ditambahkan untuk stdout yang digunakan untuk menampilkan output di console

import 'package:jobsheet2/jobsheet2.dart' as jobsheet2;

void main(List<String> arguments) {
  // print('Hello world: ${jobsheet2.calculate()}!');

  // If/else dan ternary (commit message)
  // int nilai = 75;

  // Jika nilai dimasukkan kedalam sebuah inputan
  stdout.write("Masukkan nilai: ");
  String? input = stdin.readLineSync(); // Semua inputan didalam dart itu type datanya adalah String
  int nilai = int.tryParse(input ?? '') ?? 0; // Mengubah String menjadi int yang berada di variabel nilai

  // String tmp = input ?? ''; // Jika inputan null maka akan diisi dengan '0'
  // int nilai = int.tryParse(tmp) ?? 0; // Jika inputan tidak bisa diubah menjadi int maka akan diisi dengan 0

  // String tmp;
  // if (input == null){
  //   tmp = '';
  // } else {
  //   tmp = input;
  // }
  // int nilai = int.tryParse(tmp) ?? 0;

  // Mencoba type data dynamic
  // String? input = stdin.readLineSync();
  // dynamic nilai = int.tryParse(input ?? '') ?? 0;

  /* If itu diperuntukan untuk pengujian yang variabelnya lebih dari satu atau untuk memeriksa rentang nilai */
  // if-else
  if ((nilai >= 75) && (nilai <= 100)) {
    print("Nilai A");
  } else if ((nilai >= 60) && (nilai <= 74)) {
    print("Nilai B");
  } else if ((nilai >= 0) && (nilai <= 59)) {
    print("Nilai C");
  } else {
    print("Maaf, nilai tidak benar!!");
  }

  /* if (nilai >= 75){
    print("Nilai A");
  } else if (nilai >= 60){
    print("Nilai B");
  } else {
    print("Nilai C");
  } */

  // if tradisional
  String status;
  if (nilai >= 60) {
    status = "Lulus";
  } else {
    status = "Tidak Lulus";
  }
  print("Status Anda $status");

  // Ternary Operator, bisa digunakan untuk pengujian tetapi hanya pada satu line
  String status1 = (nilai >= 60)
      ? "Alhamdulillah Lulus"
      : "Maaf anda belum lulus";
  print(status1);
}
