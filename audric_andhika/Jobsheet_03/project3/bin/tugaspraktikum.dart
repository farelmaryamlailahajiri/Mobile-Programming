void main() {
  // Daftar Nama Mahasiswa
  var mahasiswa = [];
  mahasiswa.add("Audric");
  mahasiswa.add("Bayu");
  mahasiswa.add("Icam");
  mahasiswa.add("Filla");

  print("Daftar nama mahasiswa: $mahasiswa");
  print("Jumlah mahasiswa: ${mahasiswa.length}");

  print("================================");

  // Union & Intersection
  var angka = <int>{1, 2, 3, 4, 5};
  var angka2 = <int>{4, 5, 6, 7, 8};
  print("Data union adalah = ${angka.union(angka2)}");
  print("Data intersection adalah = ${angka.intersection(angka2)}");

  print("================================");

  // Map Data Barang
  List<Map<String, dynamic>> barang = [
    {
      "kode": "BRG001",
      "nama": "Buku",
      "harga": 20000,
    },
    {
      "kode": "BRG002",
      "nama": "Pensil",
      "harga": 5000,
    },
    {
      "kode": "BRG003",
      "nama": "Penghapus",
      "harga": 3000,

    },
  ];
  print("Data barang: $barang");

  print("================================");

  // fuction closure
  var diskon = penghitungDiskon();
  print("Diskon pertama: ${diskon()}%");
  print("Diskon kedua: ${diskon()}%");
  print("Diskon ketiga: ${diskon()}%");
}

Function penghitungDiskon(){
  double diskon = 0;

  double tambahDiskon(){
   diskon += 5;
   return diskon;
  }
  return tambahDiskon;
}