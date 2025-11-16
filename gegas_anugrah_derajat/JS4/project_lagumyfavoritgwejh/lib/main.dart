import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const HelenaApp());
}

class HelenaApp extends StatelessWidget {
  const HelenaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MCR - Helena',
      home: const HelenaPage(),
    );
  }
}

class HelenaPage extends StatefulWidget {
  const HelenaPage({super.key});

  @override
  State<HelenaPage> createState() => _HelenaPageState();
}

class _HelenaPageState extends State<HelenaPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // pastikan file bg-video.mp4 ada di folder assets/ dan terdaftar di pubspec.yaml
    _controller = VideoPlayerController.asset("assets/bg-video.mp4")
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
          " My Chemical Romance ",
          style: TextStyle(
            fontSize: 22,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 40, 40, 40),
        foregroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Background Video
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

          // Overlay gradasi supaya teks terbaca
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

          // Konten teks / lirik
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  "♫ Helena ♫",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
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
                  "My Chemical Romance",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 30),

                _buildLirikSection(
                  "Long ago\nJust like the hearse you die to get in again\nWe are so far from you...",
                ),
                const SizedBox(height: 15),
                _buildLirikSection(
                  "Burning on, just like a match you strike\nTo incinerate\nThe lives of everyone you know",
                ),
                const SizedBox(height: 15),
                _buildLirikSection(
                  "And what's the worst you take (worst you take)\nFrom every heart you break (heart you break)\nAnd like the blade you stain (blade you stain)\nWell, I've been holding on tonight",
                ),
                const SizedBox(height: 15),
                _buildLirikSection(
                  "What's the worst that I can say?\nThings are better if I stay\nSo long and goodnight\nSo long and goodnight",
                ),
                const SizedBox(height: 30),

                // const Text(
                //   "🖤🌹 SO LONG AND GOODNIGHT 🌹🖤",
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.redAccent,
                //     shadows: [
                //       Shadow(
                //         blurRadius: 15.0,
                //         color: Colors.black,
                //         offset: Offset(0.0, 0.0),
                //       ),
                //     ],
                //   ),
                // ),
                // const SizedBox(height: 20),
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
              color: Colors.red,
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),
      ),
    );
  }
}