import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan2());
}

class Percobaan2 extends StatelessWidget {
  const Percobaan2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deva Selviana',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Deva Selviana",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey[100],
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Judul Lagu
                Text(
                  "Everything You Are\n(Baskara Putra)",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // 2 Box Lirik (Kiri & Kanan)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Kolom kiri
                    Expanded(
                      child: Card(
                        elevation: 4,
                        margin: const EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Wajahmu ku ingat selalu lupakan", style: TextStyle(fontSize: 18)),
                              Text("Hal-hal yang menggangguku", style: TextStyle(fontSize: 18)),
                              Text("Karena hari ini mata kita beradu", style: TextStyle(fontSize: 18)),
                              Text("Kita saling bantu melepas perasaan", style: TextStyle(fontSize: 18)),
                              SizedBox(height: 10),
                              Text("Tinggi ke angkasa menantang dunia", style: TextStyle(fontSize: 18)),
                              Text("Merayakan muda tuk satu jam saja", style: TextStyle(fontSize: 18)),
                              Text("Kita hampir mati dan kau selamatkan aku", style: TextStyle(fontSize: 18)),
                              Text("Dan ku menyelamatkanmu dan sekarang aku tahu", style: TextStyle(fontSize: 18)),
                              SizedBox(height: 10),
                              Text("Cerita kita tak jauh berbeda", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              Text("Got beat down by the world sometimes I wanna fold", style: TextStyle(fontSize: 18)),
                              Text("Namun suratmu kan ku ceritakan ke anak-anakku nanti", style: TextStyle(fontSize: 18)),
                              Text("Bahwa aku pernah dicintai with everything u are", style: TextStyle(fontSize: 18)),
                              Text("Fully as I am with everything u are", style: TextStyle(fontSize: 18)),
                              Text("Bertukar nestapa menawar trauma", style: TextStyle(fontSize: 18)),
                              Text("Datang seadanya terasku terbuka", style: TextStyle(fontSize: 18)),
                              Text("Kita hampir mati dan kau selamatkan aku", style: TextStyle(fontSize: 18)),
                              Text("Dan ku menyelamatkanmu dan sekarang aku tahu", style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Kolom kanan
                    Expanded(
                      child: Card(
                        color: Colors.blue[50],
                        elevation: 4,
                        margin: const EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text("Cerita kita tak jauh berbeda", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              Text("Got beat down by the world sometimes I wanna fold", style: TextStyle(fontSize: 18)),
                              Text("Namun suratmu kan kuceritakan ke anak-anakku nanti", style: TextStyle(fontSize: 18)),
                              Text("Bahwa aku pernah dicintai", style: TextStyle(fontSize: 18)),
                              SizedBox(height: 10),
                              Text("Seada-adanya sekurang-kurangnya", style: TextStyle(fontSize: 18)),
                              Text("Walau sulit utarakan hatiku dengan indah", style: TextStyle(fontSize: 18)),
                              Text("Walau jarang ku bernyanyi dengan cara yang indah", style: TextStyle(fontSize: 18)),
                              Text("Tapi tak sekali pun kisahku pernah kau bantah hu", style: TextStyle(fontSize: 18)),
                              SizedBox(height: 10),
                              Text("Cerita kita tak jauh berbeda", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              Text("Got beat down by the world sometimes I wanna fold", style: TextStyle(fontSize: 18)),
                              Text("Namun suratmu kan ku ceritakan ke anak-anakku nanti", style: TextStyle(fontSize: 18)),
                              Text("Bahwa aku pernah dicintai with everything u are", style: TextStyle(fontSize: 18)),
                              Text("Fully as I am with everything u are", style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Box Detail Lagu
                Card(
                  color: Colors.green[50],
                  elevation: 4,
                  margin: const EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Detail tentang lagu dan pemiliknya:\n\n"
                      "Artis: Hindia (Baskara Putra)\n"
                      "Album: Doves, '25 on Blank Canvas\n"
                      "Tanggal Rilis: 24 Februari 2025\n"
                      "Komposisi: Lirik oleh Baskara Putra (Hindia) dan musik bersama "
                      "Iga Massardi & Pradipta Beawiharta\n"
                      "Makna: Lagu ini menyampaikan pesan tentang mencintai tanpa syarat "
                      "dan menerima diri sendiri serta orang lain apa adanya.",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}