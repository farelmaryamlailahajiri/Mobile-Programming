import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];

  print("=== PROGRAM INPUT NILAI MAHASISWA ===");
  
  for (int i = 1; i <= 5; i++) {
    print("\nMahasiswa ke-$i");
    
    stdout.write('Masukkan nama mahasiswa: ');
    String? name = stdin.readLineSync();
    
    stdout.write('Masukkan nilai ujian: ');
    int? score = int.tryParse(stdin.readLineSync() ?? '');
    
    // Validasi input
    if (name == null || name.isEmpty || score == null) {
      print('Input tidak valid, silakan ulangi.');
      i--;
      continue;
    }
    
    // Menentukan kategori
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

  // Menampilkan hasil
  print('\n=== HASIL KELULUSAN MAHASISWA ===');
  print('==================================');
  
  for (var student in students) {
    print('Nama: ${student['nama']}');
    print('Nilai: ${student['nilai']}');
    print('Kategori: ${student['kategori']}');
    print('----------------------------------');
  }
}