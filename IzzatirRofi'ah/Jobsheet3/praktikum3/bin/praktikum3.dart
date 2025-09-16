import 'dart:io';
import 'package:praktikum3/praktikum3.dart' as praktikum3;

void main(List<String> arguments) {
  // print('Hello world: ${praktikum3.calculate()}!');

  // Praktikum-1 : List Mahasiswa
  var mahasiswa = [];

  stdout.write("Masukkan jumlah mahasiswa: ");
  var n = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < n; i++) {
    stdout.write("Nama mahasiswa ke-$i: ");
    mahasiswa.add(stdin.readLineSync()!);
  }

  print("\nDaftar mahasiswa: $mahasiswa");
  print("Jumlah: ${mahasiswa.length}");
}