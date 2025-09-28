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
    _controller = VideoPlayerController.asset("assets/video.mp4")
      ..setLooping(true)
      ..setVolume(0.1)
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
          " Mejikuhibiniu ",
          style: TextStyle(
            fontSize: 22,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 20, 20, 60),
        foregroundColor: Colors.lightBlueAccent,
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
                  Colors.black.withOpacity(0.2),
                  Colors.black.withOpacity(0.3),
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
                  "♫ Mejikuhibiniu ♫",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent,
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

                // === Ganti teks di bawah ini dengan lirik asli ===
                _buildLirikSection("Tulis bait pertama lagu di sini..."),
                const SizedBox(height: 15),
                _buildLirikSection("Tulis bait kedua lagu di sini..."),
                const SizedBox(height: 15),
                _buildLirikSection("Tulis bait ketiga lagu di sini..."),
                const SizedBox(height: 15),
                _buildLirikSection("Reff / chorus lagu di sini..."),
                const SizedBox(height: 30),
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
          fontSize: 18,
          color: Colors.white,
          height: 1.5,
          shadows: [
            Shadow(
              blurRadius: 5.0,
              color: Colors.blue,
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
