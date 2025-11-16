import 'package:project2/project2.dart' as project2;
import 'dart:io';

void main(){
  Map<String, String> hasilMahasiswa = {};
  print('--- PROGRAM PENILAIAN KATEGORI MAHASISWA ---');

  for (int i = 1; i <=5; i++) {

    print('DATA MAHASISWA KE-$i');

    stdout.write('Masukkan Nama Mahasiswa: ');
    String nama = stdin.readLineSync()!;

    stdout.write('Masukkan Nilai Mahasiswa: ');
    int nilai = int.parse(stdin.readLineSync()!);

    String kategori;

    switch (nilai) {
      case >= 80:
        kategori = 'A';
        break;

      case >= 60:
        kategori = 'B';
        break;

      default:
        kategori = 'C';
    }

    hasilMahasiswa[nama] = kategori;
  }

  print('\n');
  print('==================================');
  print('===== DAFTAR KATEGORI NILAI  =====');
  print('==================================');
  
  hasilMahasiswa.forEach((nama, kategori) {
    print('Nama: $nama \t Kategori: $kategori');
  });
  
  print('==================================');
}