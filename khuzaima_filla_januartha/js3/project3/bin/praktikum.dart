void main() {
  //TUGAS PRAKTIKUM 1
  // var namaMahasiswa = <String>['Filla', 'Audric', 'Paurda'];

  // namaMahasiswa.add('Bayu');
  // namaMahasiswa.add('Ircham');

  // print('Daftar Nama Mahasiswa: $namaMahasiswa');
  // print('Jumlah Mahasiswa: ${namaMahasiswa.length}');


  // TUGAS PRAKTIKUM 2
  // var setA = <int>{1, 2, 3, 4, 5};
  // var setB = <int>{4, 5, 6, 7, 8};

  // var union = setA.union(setB);

  // var intersection = setA.intersection(setB);

  // print('Set A: $setA');
  // print('Set B: $setB');
  // print('Union (Gabungan): $union');
  // print('Intersection (Irisan): $intersection');


  //TUGAS PRAKTIKUM 3
  // var dataBarang = <Map<String, dynamic>>[
  //   {'kode': 'A001', 'nama': 'Buku Tulis', 'harga': 5000},
  //   {'kode': 'A002', 'nama': 'Pensil', 'harga': 2000},
  //   {'kode': 'B001', 'nama': 'Penghapus', 'harga': 1000},
  // ];

  // print('Data Barang:');
  
  // for (var barang in dataBarang) {
  //   print(
  //       '- Kode: ${barang['kode']}, Nama: ${barang['nama']}, Harga: Rp ${barang['harga']}');
  // }


  //TUGAS PRAKTIKUM 4
  double hargaBarang = 170000;
  print('Harga Awal Barang: $hargaBarang');

  var hitungDiskonBarang = buatPenghitungDiskon(hargaBarang);

  hitungDiskonBarang();
  hitungDiskonBarang();
  hitungDiskonBarang();
}

Function buatPenghitungDiskon(double hargaAwal) {
  double diskon = 0.0;

  void hitungDiskon() {
    diskon += 0.05; 
    double hargaAkhir = hargaAwal - (hargaAwal * diskon);
    
    print('Diskon: ${diskon * 100}%, Harga Akhir: $hargaAkhir');
  }

  return hitungDiskon;
}