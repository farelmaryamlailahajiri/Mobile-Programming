// 1. Menerapkan Percabangan "if", "if-else", dan "if-else if"
/* void main() {
  // Tambahan kode 
  String test = "true";
  if (test == "true") {
    print("Kebenaran");
  }

  // String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");
} */

/*  Catatan: Penambahan kode if dapat membuat kode error jika dijalankan karena
    terjadi duplikasi variabel 'test'. Sehingga nama variabel harus diubah agar tidak
    terjadi duplikasi atau deklarasi test sebelumnya dapat di comment.
*/

// 2. Menerapkan Perulangan "while" dan "do-while"
/* void main() {
  int counter = 0; // dekalrasi dan inisialisasi
  while (counter < 33) {
    print(counter);
    counter++;
  }

  do {
    print(counter);
    counter++;
  } while (counter < 77);
} */

/* Catatan : Penambahan kode do-while tidak menimbulkan error karena tidak ada
   duplikasi variabel. Saat dijalankan kode akan mencetak baris kode while  untuk mencetak angka
   0 - 32, kemudian dilanjutkan dengan do-while untuk mencetak angka 33 - 76. 
*/

// 3. Menerapkan Perulangan "for" dan "break-continue"
void main() {
  for(int index = 0; index < 27; index++) {
    if (index == 21) break; // menghentikan perulangan jika index bernilai 21
    else if (index > 1 && index < 7) continue; // melewati perulangan jika index bernilai antara 1 - 7
    print(index);
  }
}