import 'dart:io';

void main() {

  // Membuat Map kosong untuk menyimpan data mahasiswa (Nama sebagai key, Nilai sebagai value)
  Map<String, int> dataMahasiswa = {};
  print("--- Program Input Nilai Mahasiswa ---");

  // Looping sebanyak 5 kali untuk meminta input
  for (int i = 1; i <= 5; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String nama = stdin.readLineSync() ?? 'Mahasiswa $i'; // Jika input kosong, beri nama default

    stdout.write("Masukkan nilai untuk ($nama): ");
    String? inputNilai = stdin.readLineSync();
    int nilai = int.tryParse(inputNilai ?? '') ?? 0; // Ubah input string ke integer, default 0 jika gagal

    // Memasukkan data ke dalam Map
    dataMahasiswa[nama] = nilai;
  }
  
  print("\n--- Hasil Akhir Kelulusan Mahasiswa ---");
  
  // Membuat Map baru untuk hasil akhir dengan kategori
  Map<String, String> hasilAkhir = {};

  // Melakukan iterasi pada setiap data di Map dataMahasiswa
  dataMahasiswa.forEach((nama, nilai) {
    String kategori;

    if ((nilai >= 75) && (nilai <= 100)) {
      kategori = 'A';
    } else if ((nilai >= 60) && (nilai <= 74)) {
      kategori = 'B';
    } else if ((nilai >= 0) && (nilai <= 59)) {
      kategori = 'C';
    } else {
      kategori = 'Tidak Valid'; 
    }

    // Memasukkan hasil ke Map hasilAkhir
    hasilAkhir[nama] = kategori;
  });

  int no = 1;
  hasilAkhir.forEach((nama, kategori) {
    print("$no. Nama: $nama, Kategori nilai: $kategori");
    no++;
  });
}