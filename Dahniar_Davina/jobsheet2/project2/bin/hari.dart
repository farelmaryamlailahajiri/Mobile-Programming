import 'dart:io';

void main() {
  //print('coba');
  print("Masukkan angka hari = ");
  String? input = stdin.readLineSync();
  int nilai = int.tryParse(input ?? '') ?? 0;
  switch (nilai) {
    case 1:
      print("Senin");
      break;
    case 2:
      print("Selasa");
      break;
    case 3:
      print(" Rabu");
      break;
    default:
      print("Maaf! Hari tidak ditemukan!");
  }
}