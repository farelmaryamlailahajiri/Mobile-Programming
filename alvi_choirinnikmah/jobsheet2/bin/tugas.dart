import 'dart:io';

void main() {
/*  1. BUAT PROGRAM YANG MEMINTA INPUT NILAI UJIAN DARI 5 MAHASISWA, MASUKKAN DATA MAHASISWA TERSEBUT KE DALAM MAP
    2. TENTUKAN KATEGORI KELULUSAN:
        - NILAI ≥ 80 → 'A'
        - NILAI 60–79 → 'B'
        - NILAI < 60 → 'C'
    3. GUNAKAN PERULANGAN UNTUK MEMBACA DATA, SERTA GUNAKAN IF/ELSE ATAU SWITCH UNTUK MENENTUKAN KATEGORI.
    4. TAMPILKAN HASIL AKHIR BERUPA DAFTAR MAHASISWA DENGAN KATEGORINYA. 
*/

  Map<String, int> mahasiswaNilai = {}; // Baris berikut digunakan untuk menyimpan data mahasiswa dan nilainya

  for (int i = 1; i <= 5; i++) {
    stdout.write('Masukkan nama mahasiswa ke-$i: ');
    String nama = stdin.readLineSync() ?? '';
    stdout.write('Masukkan nilai ujian $nama: ');
    int? nilai = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    mahasiswaNilai[nama] = nilai; // Baris berikut digunakan untuk memasukkan nilai ke dalam map
  }

  print('\nDaftar Mahasiswa dan Kategori Kelulusan:');
  mahasiswaNilai.forEach((nama, nilai) {
    String kategori;
    if ((nilai >= 80) && (nilai <= 100)) {
      kategori = 'A';
    } else if ((nilai >= 60) && (nilai <= 79)) {
      kategori = 'B';
    } else if ((nilai >= 0) && (nilai < 60)) {
      kategori = 'C';
    } else {
      kategori = 'Maaf, nilai tidak benar!!';
    }
    print('$nama: Nilai $nilai, Kategori $kategori');
  });
}
