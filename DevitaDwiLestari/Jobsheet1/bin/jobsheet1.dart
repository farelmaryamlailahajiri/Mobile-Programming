import 'package:jobsheet1/jobsheet1.dart' as jobsheet1;
import 'dart:io';

// Constanta di luar main
const String nama = 'Devita';

void main(List<String> arguments) {
  // Comments
  // print('Tes program: ${jobsheet3.calculate()}');
  // komentar satu baris
  /*
    contoh komentar panjang
    lebih dari satu baris
  */

  // Variabel
  var name = "Devita Dwi Lestari";
  stdout.writeln("Nama: $name");

  // Constanta dan Final
  final String panggilan = 'Dwi';
  print("Perkenalkan, saya $nama $panggilan");

  // Data typs
  int umur = 20;
  double berat = 52.5;
  bool jenis_kelamin = true; //true = Perempuan, false = laki-laki
  String alamat = 'Jalan Kemuning Tarik';
  stdout.writeln
    ("Jenis kelasmin saya ${jenis_kelamin ? 'perempuan ' : 'laki-laki'}");
  stdout.writeln("Alamat saya $alamat");
  num nilai =90.5; //bisa diisi int atau double
  stdout.writeln("Nilai saya $nilai");
  dynamic bebas = true ;
  stdout.writeln("Nilai dari dynamic adalah $bebas");

  // Numbers + operator
  int a = 12;
  double b = 3.1;
  stdout.writeln("Penjumlahan: ${a + b}");
  stdout.writeln("Pembagian: ${a ~/ 4}");

  //List
  List<String> kegiatan = ['Memasak', 'Membaca', 'Menyanyi'];
  kegiatan.add('Bersepeda');
  stdout.writeln('Kegiatan favorit saya: $kegiatan');

  // Map
  Map<String, String> biodata = {
    "nama": "Devita Dwi Lestari",
    "asal": "Sidoarjo",
    "status": "Mahasiswa",
    "jenis kelamin": "Perempuan",
  };
  stdout.writeln("Data : $biodata");
  biodata["hobi"] = "Memasak";
  biodata.addAll({"teman": "Sam & David"});
  stdout.writeln("Biodata saya: $biodata");
  stdout.writeln("Nama yang tersimpan: ${biodata['nama']}");

  //Exceptions
  try {
    int hasil = 100 ~/ 0;
    stdout.writeln(hasil);
  } on IntegerDivisionByZeroException {
    print('Oops, terjadi pembagian dengan nol!');
  } catch (e) {
    print('Ada error lain: $e');
  } finally {
    print('Program tetap lanjut ke bagian akhir');
  }

  // Null Safety
  String? kendaraan;
  stdout.writeln("Saya punya kendaraan: $kendaraan");

  String? akun;
  stdout.writeln("Nama pengguna: ${akun ?? 'Tidak diketahui'}");


}
