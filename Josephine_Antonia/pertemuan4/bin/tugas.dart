import 'dart:io';

void main (List<String> arguments) {
  var Mahasiswa = <String> []; // 1. Daftar nama mahasiswa Growable List
  var Jumlah = 5;

  for (var i = 0; i < Jumlah; i++) {
  stdout.write("Nama Mahasiswa ke-${i + 1}: ");
  var input = stdin.readLineSync();
  if (input !=null && input.isNotEmpty) {
    Mahasiswa.add(input);
  }
}
print("\nData Dalam List = $Mahasiswa");
print("Jumlah Data Mahasiswa = ${Mahasiswa.length}");
}
