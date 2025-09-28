import 'package:flutter/material.dart';

void main() {
  runApp(const project5_1_ordinary_song());
}

class project5_1_ordinary_song extends StatelessWidget {
  const project5_1_ordinary_song({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ordinary Song",
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
          "ORDINARY SONG",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Colors.blue[700],
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
                      "Ordinary Song",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Marc Velasco • 1998",
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
                        // Verse 1
                        _buildLyricSection(
                          "Just an ordinary song\n"
                          "To a special girl like you\n"
                          "From a simple guy\n"
                          "Who's so in love with you",
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Verse 2
                        _buildLyricSection(
                          "I may not have much to show\n"
                          "No diamonds that glow\n"
                          "No limousines to take you where you go",
                          isItalic: true,
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Chorus
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
                            "Just an ordinary song\n"
                            "To a special girl like you\n"
                            "From a simple guy\n"
                            "Who's so in love with you",
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
                        
                        // Verse 3
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              height: 1.5,
                            ),
                            children: [
                              TextSpan(text: "But deep inside of me is you\n"),
                              TextSpan(
                                text: "You give life to what I do\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: "All those years may see you through\n"),
                              TextSpan(
                                text: "Still, I'll be waiting here for you\n",
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Closing
                        const Text(
                          "If you have time, please, lend an ear\n"
                          "To an ordinary song",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepPurple,
                            fontStyle: FontStyle.italic,
                            height: 1.5,
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
              content: Text('🎵 Music is the poetry of the air 🎵'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        backgroundColor: Colors.blue[700],
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