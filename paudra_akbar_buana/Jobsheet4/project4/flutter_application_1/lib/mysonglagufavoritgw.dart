import 'package:flutter/material.dart';

void main() {
  runApp(const ManchesterUnitedApp());
}

class ManchesterUnitedApp extends StatelessWidget {
  const ManchesterUnitedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glory Glory Man United',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "👆🏻😜Pauaza Page😜👆🏻",
            style: TextStyle(
              fontSize: 22,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(
            255,
            222,
            0,
            0,
          ), // Merah Khas Man United
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          // Background dengan gradasi merah gelap ke hitam, dan logo MU
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 139, 0, 0), // Merah gelap
                Colors.black, // Hitam
              ],
            ),
            image: DecorationImage(
              image: const NetworkImage(
                'https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/1200px-Manchester_United_FC_crest.svg.png',
              ), // Logo MU
              fit: BoxFit.contain, // Agar logo tidak terpotong
              opacity: 0.2, // Logo sedikit transparan
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            // Agar lirik bisa di-scroll jika panjang
            child: Column(
              children: [
                const SizedBox(height: 20),
                // Judul lagu
                const Text(
                  "♫ Glory Glory Man United ♫",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Teks putih agar kontras
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Color.fromARGB(
                          255,
                          255,
                          102,
                          0,
                        ), // Efek api oranye
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Ciptaan: Fans Manchester United",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.white70,
                  ),
                ),

                const SizedBox(height: 30),

                // Lirik Lagu
                _buildLirikSection(
                  "Glory, glory, Man United\nGlory, glory, Man United\nGlory, glory, Man United\nAs the Reds go marching on, on, on!",
                ),
                const SizedBox(height: 15),
                _buildLirikSection(
                  "Just like the Busby Babes in days gone by\nWe'll keep the Red Flag flying high\nYou've got to see us play, you've got to see us win\nAnd we will never give in",
                ),
                const SizedBox(height: 15),
                _buildLirikSection(
                  "So come on you Reds, let's make some noise\nFor all the girls and all the boys\nWe're the greatest club in history\nMan United, forever we'll be!",
                ),
                const SizedBox(height: 15),
                _buildLirikSection(
                  "Glory, glory, Man United\nGlory, glory, Man United\nGlory, glory, Man United\nAs the Reds go marching on, on, on!",
                ),
                const SizedBox(height: 30),
                const Text(
                  "🔴🔥 GO RED DEVILS! 🔥🔴",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 15.0,
                        color: Color.fromARGB(
                          255,
                          255,
                          68,
                          0,
                        ), // Api lebih terang
                        offset: Offset(0.0, 0.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget pembantu untuk lirik agar tidak terlalu berulang
  Widget _buildLirikSection(String text) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          height: 1.5, // Spasi antar baris
          shadows: [
            Shadow(
              blurRadius: 5.0,
              color: Colors.red, // Bayangan merah untuk efek "panas"
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
