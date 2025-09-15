import 'dart:io';

import 'package:jobsheet3/jobsheet3.dart' as jobsheet3;

void main(List<String> arguments) {
  // print('Hello world: ${jobsheet3.calculate()}!');

  // Belajar Fixed List digunakan untuk menyimpan data dengan jumlah tetap
  // var list = List<int>.filled(5,0); // Baris berikut digunakan untuk membuat fixed list dengan tipe data integer dan jumlah 5 elemen

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 30;
  // list[3] = 40;
  // list[4] = 50;
  // // list[5] = 100;
  // print("Data dari list = $list");

  // var list = <int>[];

  // for (int i = 0; i <= 4; i++) {
  //   stdout.write('Masukkan data ke-${i + 1}: ');
  //   var input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  //   list.add(input); // tambahkan elemen baru
  // }

  // print("Data dari list setelah input = $list");

  // Growable List digunakan untuk menyimpan data dengan jumlah yang bisa berubah-ubah
  // var grow = [10];
  // grow.add(20);
  // grow.add(55);
  // grow.add(60);
  // grow.remove(55);
  // grow.add(10);
  // print("Data di dalam growable list = $grow");

  // Contoh growable list menggunakan for
  // var mahasiswa = <String>[];
  // for (int i = 0; i <= 4; i++) {
  //   stdout.write('Masukkan nama mahasiswa ke-${i + 1}: ');
  //   String? nama = stdin.readLineSync();
  //   if (nama != null && nama.isNotEmpty) {
  //     mahasiswa.add(nama);
  //   }
  // }
  // print("Daftar nama mahasiswa: $mahasiswa");

  // Set adalah kumpulan data yang tidak berurutan dan tidak boleh ada data yang sama
  var angka = <int>{1, 2, 3, 3, 4};
  print("Set angka: $angka"); // Output {1, 2, 3, 4}
  print("Data nya andalah ${angka.elementAt(3)}"); // Menampilkan data pada index ke 3
}
