import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'lyrics_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Everything U Are',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    final size = MediaQuery.of(context).size;
    // Menghitung lebar konten yang proporsional
    final contentWidth = size.width * 0.85;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey[900]!, Colors.black],
          ),
        ),
        child: Stack(
          children: [
            // Background Image Overlay
            Positioned.fill(
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                ).createShader(bounds),
                blendMode: BlendMode.darken,
                child: Image.asset('assets/background1.jpg', fit: BoxFit.cover),
              ),
            ),

            // Content
            SafeArea(
              child: Center(
                // Menambahkan Center widget
                child: ConstrainedBox(
                  // Menambahkan constraint untuk maksimal lebar
                  constraints: BoxConstraints(
                    maxWidth: contentWidth,
                    maxHeight: size.height * 0.8, // Batasi tinggi konten
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Logo or Icon
                        Container(
                          width: 100, // Ukuran logo dikecilkan
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white30, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.1),
                                blurRadius: 20,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.music_note_rounded,
                            size: 40, // Ukuran icon dikecilkan
                            color: Colors.white70,
                          ),
                        ),

                        const SizedBox(height: 30), // Spacing dikurangi
                        // Title
                        Text(
                          "Everything U Are",
                          style: GoogleFonts.poppins(
                            fontSize: 28, // Ukuran font dikecilkan
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 2,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: const Offset(0, 4),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 8), // Spacing dikurangi
                        // Artist
                        Text(
                          "Hindia",
                          style: GoogleFonts.poppins(
                            fontSize: 20, // Ukuran font dikecilkan
                            color: Colors.white70,
                            fontStyle: FontStyle.italic,
                            letterSpacing: 1,
                          ),
                        ),

                        const SizedBox(height: 40), // Spacing dikurangi
                        // Play Button
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              12,
                            ), // Radius dikecilkan
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.1),
                                blurRadius: 20,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32, // Padding dikurangi
                                vertical: 16,
                              ),
                              textStyle: GoogleFonts.poppins(
                                fontSize: 16, // Ukuran font dikecilkan
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const LyricsScreen(),
                                ),
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.play_arrow_rounded, size: 24),
                                const SizedBox(width: 8),
                                const Text("Putar Lagu"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
