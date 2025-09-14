import 'dart:io';

void main() {
  print("Masukkan Nilai Awal= ");
  String? nilai = stdin.readLineSync();
  int i = int.tryParse(nilai ?? '') ?? 0;
  while (i <= 10) {
    print("iterasi ke- $i");
    i++;
  }

  int a = int.tryParse(nilai ?? '')?? 0;
  do {
    print("Perulangakan ke- $a");
    a++;
  } while (a <= 10);
}
