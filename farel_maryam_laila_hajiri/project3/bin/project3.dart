import 'package:project3/project3.dart' as project3;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  //belajar fix list
  // var list = List<int>.filled(5, 0);

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 40;
  // list[3] = 30;
  // list[4] = 60;
  // // list[5] = 60; eror karena yang tersedia hanya 5
  // stdout.writeln("Data dari list: $list");

  //list fixed pakai perulangan
  // for (int i = 0; i <= 4; i++) {
  //   stdout.write(
  //     'Masukkan data ke-$i: ',
  //   ); // Minta input dari user untuk isi list
  //   var input = int.tryParse(
  //     stdin.readLineSync() ?? "",
  //   ); // Membaca input user (String) lalu mengubahnya ke integer
  //   list[i] =
  //       input ??
  //       0; // Menyimpan hasil input ke elemen list pada indeks ke-i (pakai ! karena kita yakin input bukan null)
  // }

  // stdout.writeln("Data dari list: $list");

  //list growable
  // var grow = [];
  // grow.add(20);
  // grow.add(30);
  // grow.remove(20);
  // stdout.writeln("Data di dalam list: $grow");

  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Data List ke-$i : ");
  //   var input = stdin.readLineSync();
  //   grow.add(int.parse((input == null || input.isEmpty) ? "0" : input));
  //   }
  //   print("Data dalam list = $grow");

  // var nama = [];
  // for (int i = 0; i <= 4; i++) {
  //   stdout.write("Data List ke-$i : ");
  //   var input = stdin.readLineSync();
  //   nama.add(input ?? "");
  // }
  // print("Data dalam list = $nama");

  // var angka = <int>{1, 2, 3, 3, 4};
  // stdout.writeln("Set angka ; $angka");
  // print("Elemen ke-2 : ${angka.elementAt(1)}");

  // var angka2 = <int>{4, 5, 6, 7, 8};
  // print("data union adalah= ${angka.union(angka2)}");
  // print("Data insersection adalah = ${angka.intersection(angka2)}");

  //map
  // var biodata = {"nim": "2341760028", "nama": "Farel", "jurusan": "TI"};
  // biodata["Angkatan"] = "2023";
  // print("Biodata Mahasiswa $biodata");
  // print("Biodata mahasiswa dengan nama = ${biodata['nama']}");

  //record
  // var mahasiswa = ("Farel", 20, true);
  // print("Ini data saya: $mahasiswa");
  // print("Mahasiswa = ${mahasiswa.$1}");

  // var bio = (nama: "farel maryam laila hajiri", umur: 20, gender: true);
  // print("bio daya $bio");
  // print("nama saya ${bio.nama}");

  //function
  tampil("farel", 20, "malang");
  tampil("jose", 20);
}

//function parameter
void tampil(String nama, int umur, [String? alamat]) {
  print("Nama: $nama");
  print("Umur: $umur");
  if (alamat != null) {
    print("Alamat: $alamat");
  } else {
    print("alamat: -");
  }
}
