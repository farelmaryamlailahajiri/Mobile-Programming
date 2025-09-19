import 'dart:io';

void main() {
  //Growable List nama mahasiswa dan tampilkan jumlah datanya
  var mahasiswa = <String>[];

  for (int i = 0; i < 3; i++) {
    stdout.write("Masukkan nama mahasiswa ke-${i + 1}: ");
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      mahasiswa.add(input);
    }
  }

  print("Daftar mahasiswa: $mahasiswa");
  print("Jumlah mahasiswa = ${mahasiswa.length}");
}

