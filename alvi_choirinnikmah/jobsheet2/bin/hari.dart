import 'dart:io';

void main() {
  // Switch - Case digunakan untuk pengujian yang variabelnya hanya satu dan untuk memeriksa nilai yang pasti
  
  stdout.write("Masukkan angka hari: ");
  String? hari = stdin.readLineSync();
  int nilai = int.tryParse(hari ?? '') ?? 0;
  switch (nilai) {
    case 1:
      print("senin");
      break;
    case 2:
      print("selasa");
      break;
    case 3:
      print("rabu");
      break;
    default:
      print("Maaf, inputan salah");
  }
}
