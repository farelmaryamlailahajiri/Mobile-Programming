void main() {
  //Growable List
  var namaMahasiswa = <String>['Filla', 'Audric', 'Paurda'];

  //Tambah data baru
  namaMahasiswa.add('Bayu');
  namaMahasiswa.add('Ircham');

  print('Daftar Nama Mahasiswa: $namaMahasiswa');
  print('Jumlah Mahasiswa: ${namaMahasiswa.length}');
}