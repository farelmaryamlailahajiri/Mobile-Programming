import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starlight',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Muhammad Ircham',
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
        ),
        body: const VideoBackgroundLyrics(),
      ),
    );
  }
}

class VideoBackgroundLyrics extends StatefulWidget {
  const VideoBackgroundLyrics({super.key});

  @override
  State<VideoBackgroundLyrics> createState() => _VideoBackgroundLyricsState();
}

class _VideoBackgroundLyricsState extends State<VideoBackgroundLyrics> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/background.mp4')
      ..setVolume(0.5)
      ..setLooping(true)
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
    return Stack(
      children: [
        _controller.value.isInitialized
            ? SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size.width,
                    height: _controller.value.size.height,
                    child: VideoPlayer(_controller),
                  ),
                ),
              )
            : Container(color: Colors.black),
        Container(
          color: Colors.black.withOpacity(0.4), // agar teks lebih mudah dibaca
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Far away", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("This ship is taking me far away", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Far away from the memories", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Of the people who care if I live or die", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                Text("Starlight", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("I will be chasing a starlight", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Until the end of my life", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("I don't know if it's worth it anymore", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                Text("Hold you in my arms", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("I just wanted to hold", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("You in my arms", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                Text("My life", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("You electrify my life", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Let's conspire to ignite", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("All the souls that would die just to feel alive", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                Text("I'll never let you go", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("If you promise not to fade away", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Never fade away", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Our hopes and expectations", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Black holes and revelations", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Our hopes and expectations", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Black holes and revelations", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                Text("Hold you in my arms", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("I just wanted to hold", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("You in my arms", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                Text("Far away", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("This ship is taking me far away", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Far away from the memories", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Of the people who care if I live or die", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                Text("I'll never let you go", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("If you promise not to fade away", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Never fade away", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Our hopes and expectations", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Black holes and revelations, yeah", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Our hopes and expectations", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Black holes and revelations", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                Text("Hold you in my arms", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("I just wanted to hold", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("You in my arms", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}