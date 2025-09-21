void main() {
  //TUGAS PRAKTIKUM 1
  // var namaMahasiswa = <String>['Filla', 'Audric', 'Paurda'];

  // namaMahasiswa.add('Bayu');
  // namaMahasiswa.add('Ircham');

  // print('Daftar Nama Mahasiswa: $namaMahasiswa');
  // print('Jumlah Mahasiswa: ${namaMahasiswa.length}');


  // TUGAS PRAKTIKUM 2
  var setA = <int>{1, 2, 3, 4, 5};
  var setB = <int>{4, 5, 6, 7, 8};

  var union = setA.union(setB);

  var intersection = setA.intersection(setB);

  print('Set A: $setA');
  print('Set B: $setB');
  print('Union (Gabungan): $union');
  print('Intersection (Irisan): $intersection');
}