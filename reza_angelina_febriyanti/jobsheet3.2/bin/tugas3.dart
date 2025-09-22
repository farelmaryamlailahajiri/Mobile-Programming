import 'dart:io';

void main() {
  //Menyimpan daftar nama mahasiswa menggunakan Growable List
  List<String> mahasiswa = [];

  stdout.write("Masukkan jumlah mahasiswa: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlah; i++) {
    stdout.write("Nama mahasiswa ke-${i + 1}: ");
    String nama = stdin.readLineSync()!;
    mahasiswa.add(nama);
  }

  print("\nDaftar nama mahasiswa: $mahasiswa");
  print("Jumlah data mahasiswa: ${mahasiswa.length}");
}