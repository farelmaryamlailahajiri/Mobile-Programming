import 'dart:io';

void main(){
  //While Loop
  //int x = 1;
  /*
  print("Masukkan nilai awal:");
  String? input = stdin.readLineSync();
  int x = int.tryParse(input ?? '') ?? 0;
  while (x <= 5) {
    print(x);
    x++;
  }
  //Hasil = 1 2 3 4 5

  int y = 10;
  while (y > 5) {
    print(y);
    y--;
  }
  //Hasil = 10 9 8 7 6
  */

  //Do while Loop
  int a = 1;
  do {
    print(a);
    a++;
  } while (a <= 0);
  //Hasil = 1

  print("Masukkan nilai awal:");
  String? nilai = stdin.readLineSync();
  int b = int.tryParse(nilai ?? '') ?? 0;
  do {
    print(b);
    b--;
  } while (b > 5);
}