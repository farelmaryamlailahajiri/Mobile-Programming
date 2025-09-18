import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write('Masukkan nama mahasiswa ke-$i: ');
    String? name = stdin.readLineSync();
    stdout.write('Masukkan nilai ujian: ');
    int? score = int.tryParse(stdin.readLineSync() ?? '');
    if (name == null || score == null) {
      print('Input tidak valid, silakan ulangi.');
      i--;
      continue;
    }
    String category;
    if (score >= 80) {
      category = 'A';
    } else if (score >= 60) {
      category = 'B';
    } else {
      category = 'C';
    }
    students.add({'nama': name, 'nilai': score, 'kategori': category});
  }

  print('\nDaftar Mahasiswa dan Kategorinya:');
  for (var student in students) {
  print('Nama: ${student['nama']}, Nilai: ${student['nilai']}, Kategori: ${student['kategori']}');
  }
}
