import 'package:flutter/material.dart';

void main() {
  runApp(const TitikNadirApp());
}

class TitikNadirApp extends StatelessWidget {
  const TitikNadirApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TitikNadirPage(),
    );
  }
}

class TitikNadirPage extends StatelessWidget {
  const TitikNadirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 39, 15, 15),
              Color.fromARGB(255, 67, 32, 32),
              Color.fromARGB(255, 100, 44, 44),
              Color.fromARGB(255, 151, 84, 84),
              Color.fromRGBO(176, 108, 108, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Baris cover album + judul
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgVQgCYDJAXHawbLCV0XPU21HfC1mamigYfQ&s",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Titik Nadir",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "KAHITNA",
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // Kotak transparan untuk lirik di tengah
                Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 600, // biar rapi, tidak terlalu lebar
                    ),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white24, width: 1),
                    ),
                    child: const Text(
                      "Sampai juga di titik nadir\n"
                      "Cinta ini semakin tak mungkin ku raih\n"
                      "Tak kusangka sungguh teganya\n"
                      "Kau mengikat akad yang seharusnya milikku\n"
                      "Kini miliknya\n\n"

                      "Meski hatiku untuk kamu\n"
                      "Dan hatimu tetap aku\n"
                      "Jangan coba kita tuk bertemu\n"
                      "Takkan sanggup aku bertahan diam\n"
                      "Ingin berlari memelukmu\n"
                      "Yang pernah kumiliki\n\n"

                      "Di benakku selalu terlintas\n"
                      "Jalinan kisah kita indah selamanya\n"
                      "Dan di pelaminan itu\n"
                      "Masih sempat kau melihat tepat ke arahku\n"
                      "Aku tertunduk\n\n"

                      "Meski hatiku untuk kamu\n"
                      "Dan hatimu tetap aku\n"
                      "Jangan coba kita tuk bertemu\n"
                      "Takkan sanggup aku bertahan diam\n"
                      "Ingin berlari memelukmu\n"
                      "Yang pernah kumiliki\n\n"

                      "Harus kuhapus bayanganmu\n"
                      "Mengapa hati selalu memanggil namamu\n"
                      "Semakin aku menjauh\n"
                      "Semakin jiwa tak bisa terpisahkan\n\n"

                      "Meski hatiku untuk kamu\n"
                      "Dan hatimu tetap aku\n"
                      "Jangan coba kita tuk bertemu\n"
                      "Takkan sanggup aku bertahan diam\n"
                      "Ingin berlari memelukmu\n"
                      "Yang pernah kumiliki\n\n"

                      "Jangan coba kita tuk bertemu\n"
                      "Takkan sanggup aku bertahan diam\n"
                      "Ingin berlari memelukmu\n"
                      "Yang pernah kumiliki\n\n"
                      
                      "Yang pernah kumiliki\n"
                      "Yang dulu milik aku\n"
                      "Ho ho\n",

                      style: TextStyle(fontSize: 20, color: Colors.white),
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