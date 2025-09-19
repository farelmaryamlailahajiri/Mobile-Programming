import 'dart:io';

void main() {
  // Growable List nama mahasiswa dan tampilkan jumlah datanya
  // var mahasiswa = <String>[];

  // for (int i = 0; i < 3; i++) {
  //   stdout.write("Masukkan nama mahasiswa ke-${i + 1}: ");
  //   String? input = stdin.readLineSync();
  //   if (input != null && input.isNotEmpty) {
  //     mahasiswa.add(input);
  //   }
  // }

  // print("Daftar mahasiswa: $mahasiswa");
  // print("Jumlah mahasiswa = ${mahasiswa.length}");

  //union dan intersection dari input tipe data string
  var set1 = <String>{};
  var set2 = <String>{};

  // input set1
  for (int i = 0; i < 3; i++) {
    stdout.write("Masukkan data Set1 ke-${i + 1}: ");
    set1.add(stdin.readLineSync() ?? "");
  }

  // input set2
  for (int i = 0; i < 3; i++) {
    stdout.write("Masukkan data Set2 ke-${i + 1}: ");
    set2.add(stdin.readLineSync() ?? "");
  }

  print("Set1 = $set1");
  print("Set2 = $set2");
  print("Union = ${set1.union(set2)}");
  print("Intersection = ${set1.intersection(set2)}");
}


  
