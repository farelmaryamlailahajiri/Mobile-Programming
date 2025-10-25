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
void main() {
  int counter = 0; // dekalrasi dan inisialisasi
  while (counter < 33) {
    print(counter);
    counter++;
  }
}