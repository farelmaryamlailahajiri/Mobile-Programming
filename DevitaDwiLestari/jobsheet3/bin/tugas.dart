import 'dart:io';

void main() {
  // 1. Growable List Mahasiswa
  var daftarMahasiswa = []; // membuat list yang bisa bertambah

  print("Masukkan 3 nama mahasiswa:");

  for (int i = 0; i < 3; i++) {
    stdout.write("Nama mahasiswa ke-${i + 1}: ");
    var nama = stdin.readLineSync() ?? '';
    daftarMahasiswa.add(nama); // menambahkan nama ke list
  }

  print("\nDaftar mahasiswa: $daftarMahasiswa");
  print("Jumlah mahasiswa: ${daftarMahasiswa.length}");
}
