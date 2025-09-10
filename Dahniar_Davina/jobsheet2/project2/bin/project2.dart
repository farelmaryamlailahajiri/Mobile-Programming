import 'dart:io';

import 'package:project2/project2.dart' as project2;
void main(List<String> arguments) {
  //print('Hello world: ${project2.calculate()}!');

  //IF ELSE TERNARY OPERATOR
  //int nilai = 75;
  stdout.write("Masukkan nilai = ");
  String? input = stdin.readLineSync();
  int nilai = int.tryParse(input ?? '') ?? 0;

  //String tmp = input ?? '';
  //int nilai = int.tryParse(tmp) ?? 0;

  //String tmp;
  /*if (input == null) {
    tmp = ''
  } else {
    tmp = input;
  }
  int nilai = int.tryParse(tmp) ?? 0;*/

  if ((nilai >= 75) && (nilai <= 100)) {
    print("Nilai A");
  } else if ((nilai >= 65) && (nilai <= 74)) {
    print("Nilai B");
  } else if ((nilai >= 0) && (nilai <= 69)) {
    print("Nilai C");
  } else {
    print("Nilai Invalid!");
  }

  //IF TRADISIONAL
  String status;
  if (nilai >= 75) {
    status = "Lulus";
  } else {
    status = "Tidak Lulus";
  }
  print(status);

  //TENARY OPERATOR
  String status1 = nilai >= 75 ? "Selamat! Anda dinyatakan lulus." : "Maaf! Anda dinyatakan tidak lulus.";
  print(status1);
}
