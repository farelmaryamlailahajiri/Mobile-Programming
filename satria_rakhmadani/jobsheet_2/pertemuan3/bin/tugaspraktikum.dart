import 'dart:io';

void prosesKelulusanMahasiswa() {
  final mahasiswaList = <Map<String, dynamic>>[];

  for (var i = 0; i < 5; i++) {
    stdout.write("\nNama Mahasiswa ${i + 1}: ");
    final nama = stdin.readLineSync() ?? "Anonim";

    stdout.write("Nilai Ujian: ");
    final nilai = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    mahasiswaList.add({
      "nama": nama,
      "nilai": nilai,
      "kategori": tentukanKategori(nilai),
    });
  }

  tampilkanHasil(mahasiswaList);
}

String tentukanKategori(int nilai) {
  if (nilai >= 80) return "A (Lulus)";
  if (nilai >= 60) return "B (Lulus)";
  return "C (Tidak Lulus)";
}

void tampilkanHasil(List<Map<String, dynamic>> data) {
  stdout.writeln("\n--- Rekap Kelulusan ---");
  for (var mhs in data) {
    stdout.writeln(
      "Mahasiswa: ${mhs['nama']}, Nilai: ${mhs['nilai']}, Kategori: ${mhs['kategori']}",
    );
  }
}