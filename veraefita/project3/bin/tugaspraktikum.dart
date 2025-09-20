  import 'dart:io';

void main() {
  // 1. Growable List
  var mahasiswa = <String>[];
  for (var i = 0; i < 3; i++) {
    stdout.write("Masukkan nama mahasiswa ke-${i + 1}: ");
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      mahasiswa.add(input);
    }
  }
  print("Daftar mahasiswa: $mahasiswa");
  print("Jumlah mahasiswa: ${mahasiswa.length}");
}
