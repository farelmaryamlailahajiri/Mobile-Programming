import 'dart:io';

void main() {
  // Do-While digunakan untuk perulangan yang minimal dijalankan satu kali, biasanya jika kita tahu batasnya.
  // Pada do-while, output dicetak dulu, kemudian kondisi dicek untuk perulangan berikutnya.
  // Pada while, kondisi dicek terlebih dahulu. Jika memenuhi syarat, maka output akan dicetak.

  stdout.write("Masukkan nilai awal: ");
  String? nilai = stdin.readLineSync();
  int i = int.tryParse(nilai ?? '') ?? 0;

  // Deklarasi
  // int i = 1;
  while (i <= 10) {
    print("Iterasi ke $i");
    i++;
  }

  int a = int.tryParse(nilai ?? '') ?? 0;

  // int a = 11;
  do {
    print("perulangan ke $a");
    a++;
  } while (a <= 10);
}
