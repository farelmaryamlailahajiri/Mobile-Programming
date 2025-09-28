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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Deva Selviana",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 1.2,
            ),
          ),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 8,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Color(0xFFE3F2FD)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Judul Lagu dalam Card
                Card(
                  color: Colors.blue[50],
                  elevation: 8,
                  shadowColor: Colors.blueAccent.withOpacity(0.4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                    child: Text(
                      "🎵 Everything You Are\n(Baskara Putra)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        letterSpacing: 1.2,
                        shadows: [
                          Shadow(
                            offset: Offset(2, 2),
                            blurRadius: 4,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 2 Box Lirik
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _buildLyricCard(
                        lyrics: const [
                          "✨ Wajahmu ku ingat selalu lupakan",
                          "Hal-hal yang menggangguku",
                          "Karena hari ini mata kita beradu",
                          "Kita saling bantu melepas perasaan",
                          "",
                          "🚀 Tinggi ke angkasa menantang dunia",
                          "Merayakan muda tuk satu jam saja",
                          "Kita hampir mati dan kau selamatkan aku",
                          "Dan ku menyelamatkanmu dan sekarang aku tahu",
                          "",
                          "💌 Cerita kita tak jauh berbeda",
                          "Got beat down by the world sometimes I wanna fold",
                          "Namun suratmu kan ku ceritakan ke anak-anakku nanti",
                          "Bahwa aku pernah dicintai with everything u are",
                          "Fully as I am with everything u are",
                        ],
                        alignment: CrossAxisAlignment.start,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: _buildLyricCard(
                        lyrics: const [
                          "💌 Cerita kita tak jauh berbeda",
                          "Got beat down by the world sometimes I wanna fold",
                          "Namun suratmu kan kuceritakan ke anak-anakku nanti",
                          "Bahwa aku pernah dicintai",
                          "",
                          "🌿 Seada-adanya sekurang-kurangnya",
                          "Walau sulit utarakan hatiku dengan indah",
                          "Walau jarang ku bernyanyi dengan cara yang indah",
                          "Tapi tak sekali pun kisahku pernah kau bantah hu",
                          "",
                          "💌 Cerita kita tak jauh berbeda",
                          "Got beat down by the world sometimes I wanna fold",
                          "Namun suratmu kan ku ceritakan ke anak-anakku nanti",
                          "Bahwa aku pernah dicintai with everything u are",
                          "Fully as I am with everything u are",
                        ],
                        alignment: CrossAxisAlignment.end,
                        color: const Color(0xFFE3F2FD),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Box Detail Lagu (judul bold biru, isi hitam normal)
                Card(
                  color: Colors.blue[50],
                  elevation: 8,
                  shadowColor: Colors.blueAccent.withOpacity(0.4),
                  margin: const EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "📌 Detail Lagu:",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "🎤 Artis: Hindia (Baskara Putra)\n"
                          "💿 Album: Doves, '25 on Blank Canvas\n"
                          "📅 Rilis: 24 Februari 2025\n"
                          "🎼 Komposisi: Lirik oleh Baskara Putra (Hindia) & musik bersama "
                          "Iga Massardi & Pradipta Beawiharta\n\n"
                          "✨ Makna: Lagu ini menyampaikan pesan tentang mencintai tanpa syarat "
                          "dan menerima diri sendiri serta orang lain apa adanya.",
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            fontWeight: FontWeight.normal,
                            color: Colors.black87,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
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

  Widget _buildLyricCard({
    required List<String> lyrics,
    required CrossAxisAlignment alignment,
    required Color color,
  }) {
    return Card(
      color: color,
      elevation: 6,
      margin: const EdgeInsets.all(8),
      shadowColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: alignment,
          children: lyrics
              .map(
                (line) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Text(
                    line,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: line.contains("💌") ||
                              line.contains("✨") ||
                              line.contains("🚀") ||
                              line.contains("🌿")
                          ? Colors.blueAccent
                          : Colors.black87,
                      fontWeight: (line.contains("💌") ||
                              line.contains("Wajahmu") ||
                              line.contains("Tinggi ke angkasa") ||
                              line.contains("Seada-adanya"))
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                    textAlign: alignment == CrossAxisAlignment.end
                        ? TextAlign.right
                        : TextAlign.left,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}