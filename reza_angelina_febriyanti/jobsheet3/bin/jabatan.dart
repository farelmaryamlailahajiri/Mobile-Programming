import 'dart:io';

void main() {
  print("Masukkan pangkat:");
  String? input = stdin.readLineSync();
  int gaji = int.parse(input ?? '') ?? 0;
  //Switch Case
  switch (gaji) {
    case 1:
      print("Golangan 1: Rp 1.999.900 - Rp 2.901.400");
      break;
    case 2:
      stdout.write("Golangan 2: Rp 2.591.100 - Rp 4.125.600");
      break;
    case 3:
      stdout.write("Golangan 3: Rp 3.154.400 - Rp 5.180.700");
      break;
    case 4:
      stdout.write("Golangan 4: Rp 3.880.400 - Rp 6.373.200");
      break;
    default:
      stdout.write("Golangan tidak ditemukan");
  }
}