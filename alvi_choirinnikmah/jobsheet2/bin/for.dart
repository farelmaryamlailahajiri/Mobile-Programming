void main() {

  // Contoh penggunaan Break
  // Perulangan for digunakan ketika jumlah langkah perulangan sudah diketahui.
  // for (int i = 0; i <= 10; i++) {
  // Break, berfungsi untuk menghentikan perulangan secara paksa. Meskipun kondisi perulangan masih memungkinkan untuk dilanjutkan, jika syarat tertentu terpenuhi maka perulangan langsung berhenti.
  //   if (i == 5) {
  //     break;
  //   }
  //   print("iterasi ke $i");
  // }
  
  // Contoh penggunaan Continue
  // Continue, digunakan untuk melewati suatu langkah pada perulangan. Jika kondisi tertentu terpenuhi, kode di bawah continue tidak dijalankan, tetapi perulangan tetap berlanjut ke iterasi berikutnya.
  for (int i = 0; i <= 10; i++) {
    // Jika i ganjil, iterasi tersebut dilewati dan tidak dijalankan pada perintah berikutnya
    if (i % 2 != 0) { 
      continue;
    }
    print("iterasi ke $i");
  }
}
