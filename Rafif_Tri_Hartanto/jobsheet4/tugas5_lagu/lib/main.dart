import 'package:flutter/material.dart';

void main() {
  runApp(const ProjectMyWay());
}

class ProjectMyWay extends StatelessWidget {
  const ProjectMyWay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Way",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const SongScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SongScreen extends StatelessWidget {
  const SongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MY WAY",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE3F2FD),
              Color(0xFFBBDEFB),
              Color(0xFF90CAF9),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header informasi lagu
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Column(
                  children: [
                    Text(
                      "My Way",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Frank Sinatra • 1969",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Container untuk lirik lagu
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _buildLyricSection(
                          "And now, the end is near\n"
                          "And so I face the final curtain\n"
                          "My friend, I'll say it clear\n"
                          "I'll state my case, of which I'm certain",
                        ),

                        const SizedBox(height: 20),

                        _buildLyricSection(
                          "I've lived a life that's full\n"
                          "I've traveled each and every highway\n"
                          "And more, much more than this\n"
                          "I did it my way",
                          isItalic: true,
                        ),

                        const SizedBox(height: 20),

                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.blue[200]!,
                              width: 1,
                            ),
                          ),
                          child: const Text(
                            "Regrets, I've had a few\n"
                            "But then again, too few to mention\n"
                            "I did what I had to do\n"
                            "And saw it through without exemption",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueGrey,
                              height: 1.4,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              height: 1.5,
                            ),
                            children: [
                              TextSpan(text: "Yes, there were times, I'm sure you knew\n"),
                              TextSpan(
                                text: "When I bit off more than I could chew\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: "But through it all, when there was doubt\n"),
                              TextSpan(
                                text: "I ate it up and spit it out\n",
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                              TextSpan(text: "I faced it all and I stood tall\nAnd did it my way"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('🎵 And did it... My Way 🎵'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        backgroundColor: Colors.blue[900],
        child: const Icon(Icons.music_note, color: Colors.white),
      ),
    );
  }

  // Method helper untuk membangun section lirik
  Widget _buildLyricSection(String text, {bool isItalic = false}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        height: 1.5,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        color: Colors.black87,
      ),
    );
  }
}
