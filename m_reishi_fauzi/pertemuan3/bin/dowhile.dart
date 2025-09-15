import 'dart:io';

//while itu di uji dulu, klo sesuai baru di cetak
//dowhile dicetak dulu baru di uji
 
 void main() {
  print("Masukkan nilai awal: ");
  String? nilai = stdin.readLineSync();

  int i = int.tryParse(nilai ?? '') ?? 0;
  while (i <= 10){
    print("iterasi ke $i");
    i++;
  }

  int a = int.tryParse(nilai ?? '') ?? 0;
  do {
    print("perulangan ke $a");
    a++;
  } while (a <= 10);
}