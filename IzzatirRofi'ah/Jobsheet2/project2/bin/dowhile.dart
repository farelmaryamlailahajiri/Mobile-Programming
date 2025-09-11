import 'dart:io';

void main(){
  print("Masukkan nilai awal = ");
  String? nilai = stdin.readLineSync();

  // while
  int i = int.tryParse(nilai ?? '') ?? 0;
  while(i <=10){
    print("Iterasi ke $i");
    i++;
  }

  // do-while
  int a = int.tryParse(nilai ?? '') ?? 0;
  do {
    print("Perulangan ke $a");
    a++;
  } while(a <= 10);
}