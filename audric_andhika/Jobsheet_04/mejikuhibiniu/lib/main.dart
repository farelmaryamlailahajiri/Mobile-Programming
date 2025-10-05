import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MejikuhibiniuApp());
}

class MejikuhibiniuApp extends StatelessWidget {
  const MejikuhibiniuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mejikuhibiniu - Tenxi, Suisei & Jemsii',
      home: const MejikuhibiniuPage(),
    );
  }
}

class MejikuhibiniuPage extends StatefulWidget {
  const MejikuhibiniuPage({super.key});

  @override
  State<MejikuhibiniuPage> createState() => _MejikuhibiniuPageState();
}

class _MejikuhibiniuPageState extends State<MejikuhibiniuPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/vd.mp4")
      ..setLooping(true)
      ..setVolume(0.2)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " Puting Beliung \n🌪️🌪️🌪️🌪️🌪️🌪️",
          style: TextStyle(
            fontSize: 21,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 20, 20, 60),
        foregroundColor: Colors.yellowAccent,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Background video
          if (_controller.value.isInitialized)
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),

          // Overlay gradasi
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.8),
                ],
              ),
            ),
          ),

          // Konten teks/lirik
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Mejikuhibiniu",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Tenxi, Suisei, & Jemsii",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 30),

                _buildLirikSection("Mejikuhibiniu ku lihat kamu \nHidup penuh warna warni saat ku bersamamu \nSatu untuk semua dan semua untuk satu \nKenapa ada dia di antara kau dan aku"),
                const SizedBox(height: 15),
                _buildLirikSection("Di antara kau dan a \nDi antara kau dan a \nDi antara kau dan akuu \nDi antara kau dan a \nDi antara kau dan a"),
                const SizedBox(height: 15),
                _buildLirikSection("Cuma kamu tiada yang lain \nKubilang aku gak main main \nApa yang kau mau kuturutin \nSekarang kamu sama yang lain \nAwalnya ku cuma cobain tapi ku ketagihan"),
                const SizedBox(height: 15),
                _buildLirikSection("Ku bilang amen sampai ke pelaminan \nJangan disamain \nSama mantanmu bajingan \nUlang lagi kucari yang lain"),
                const SizedBox(height: 15),
                _buildLirikSection("Tak sepantasnya \nBilang cinta kalo nggak bisa tahan \nPutar fakta kau bilang aku yang salah \nYang tau semuanya ya cuma Tuhan"),
                const SizedBox(height: 15),
                _buildLirikSection("Apa masih kurang \nSungguh keterlaluan \nSungguh keterlaluan \nKukira takkan terulang \nSaat ku nggak karuan \nKu tau kamu bersulang \nMemang sekarang semuanya telah hancur melebur \nTapi seenggaknya aku nggak pernah palsu"),
                const SizedBox(height: 15),
                _buildLirikSection("Kayak kamu kayak kamu kayak kamu \nCuma kamu cuma kamu cuma kamu \nTapi cuma ada dia di hatimu \nTapi untukkuu"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLirikSection(String text) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 13,
          color: Colors.white,
          height: 1.5,
          shadows: [
            Shadow(
              blurRadius: 5.0,
              color: Colors.black,
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
