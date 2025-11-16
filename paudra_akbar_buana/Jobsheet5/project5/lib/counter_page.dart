import 'package:flutter/material.dart';

// 2. Halaman Counter (StatefulWidget)
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0; // Variabel state untuk menyimpan angka

  // Fungsi untuk menambah angka
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Fungsi untuk mengurangi angka
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        // Pastikan tidak negatif
        _counter--;
      }
    });
  }

  // Fungsi untuk reset angka ke 0
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
    // Menampilkan pesan reset
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Counter di-reset ke 0!'),
        duration: Duration(seconds: 1),
        backgroundColor: Color.fromARGB(255, 0, 97, 188),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Ambil warna sekunder dari tema (yang berwarna terang)
    final Color secondaryColor = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      // Judul AppBar: Counter App
      appBar: AppBar(
        title: const Text('Counter App'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        // Tampilkan angka di tengah layar
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter', // Menampilkan angka
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                // PERBAIKAN: Menggunakan warna sekunder tema agar terlihat di latar belakang gelap
                color: secondaryColor,
              ),
            ),
            const SizedBox(height: 50),

            // Gunakan Row untuk menyusun 3 tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Tombol "-" (Menggunakan ElevatedButton dengan background transparan)
                ElevatedButton.icon(
                  onPressed: _decrementCounter,
                  icon: const Icon(Icons.remove, color: Colors.redAccent),
                  label: const Text(
                    'Kurangi',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                  style: ElevatedButton.styleFrom(
                    // JADIKAN TRANSPARAN DAN ELEVATION 0
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    // Tambahkan bentuk oval/lingkaran yang rapi
                    shape: const StadiumBorder(
                      side: BorderSide(
                        color: Colors.redAccent,
                        width: 1.5,
                      ), // Beri border untuk mempertahankan bentuk
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 20),

                // Tombol "+" (Menggunakan ElevatedButton dengan background transparan)
                ElevatedButton.icon(
                  onPressed: _incrementCounter,
                  icon: const Icon(Icons.add, color: Colors.greenAccent),
                  label: const Text(
                    'Tambah',
                    style: TextStyle(color: Colors.greenAccent),
                  ),
                  style: ElevatedButton.styleFrom(
                    // JADIKAN TRANSPARAN DAN ELEVATION 0
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    // Tambahkan bentuk oval/lingkaran yang rapi
                    shape: const StadiumBorder(
                      side: BorderSide(
                        color: Colors.greenAccent,
                        width: 1.5,
                      ), // Beri border untuk mempertahankan bentuk
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 20),

                // Tombol Reset untuk mengembalikan angka ke 0 (OutlinedButton)
                OutlinedButton.icon(
                  onPressed: _resetCounter,
                  icon: const Icon(Icons.refresh, color: Colors.orange),
                  label: const Text(
                    'Reset',
                    style: TextStyle(color: Colors.orange),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.orange),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
