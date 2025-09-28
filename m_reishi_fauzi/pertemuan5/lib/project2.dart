// ignore_for_file: deprecated_member_use

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Project2 extends StatefulWidget {
  const Project2({super.key});

  @override
  State<Project2> createState() => _Project2State();
}

class _Project2State extends State<Project2> {
  final ScrollController _scrollController = ScrollController();

  final List<String> lines = [
    "Lima hari sudah kurindu",
    "Tak bisa ku menghubungimu",
    "Kau sedang dengan dirinya",
    "Sedang kita rahasia",
    "Kapankah kau ada waktu",
    "Sembunyi untuk bertemu",
    "Baru kau sapa kutersipu",
    "Kau puji lupa amarahku",
    "Karena kau paling tahu",
    "Cara lemahkan hatiku",
    "Walau tak ada yang pasti",
    "Yang kau beri hanya mimpi",
    "Lantas mengapa ku masih menaruh hati",
    "Padahal kutahu kau t'lah terikat janji",
    "Keliru ataukah bukan tak tahu",
    "Lupakanmu tapi aku tak mau",
    "Oh wo",
    "Baru kau sapa kutersipu (tersipu)",
    "Kau puji lupa amarahku",
    "Karena kau paling tahu (paling tahu)",
    "Cara lemahkan hatiku (hatiku)",
    "Walau tak ada yang pasti",
    "Yang kau beri hanya mimpi",
    "Lantas mengapa ku masih menaruh hati",
    "Padahal kutahu kau t'lah terikat janji",
    "Keliru ataukah bukan tak tahu",
    "Lupakanmu tapi aku tak mau",
    "Pantaskah aku menyimpan rasa cemburu",
    "Padahal bukan aku yang memilikimu",
    "Sanggup sampai kapankah ku tak tahu",
    "Akankah akal sehat menyadarkanku",
    "Oh wo",
    "Uh",
    "Lantas mengapa ku masih menaruh hati",
    "Lantas mengapa ku masih menaruh hati",
    "Padahal kutahu kau t'lah terikat janji",
    "Keliru ataukah bukan tak tahu",
    "Lupakanmu tapi aku tak mau (pantaskah ku)",
    "Pantaskah aku (ku menyimpan)",
    "Untuk menyimpan (rasa cemburu)",
    "Karna bukan aku yang milikimu",
    "Sanggup sampai kapankah ku tak tahu",
    "Akankah akal sehat menyadarkanku",
  ];

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final scaleFactor = (screenWidth / 390).clamp(0.8, 1.5);

    final grouped = <List<String>>[];
    for (int i = 0; i < lines.length; i += 4) {
      grouped.add(
        lines.sublist(i, (i + 4 <= lines.length) ? i + 4 : lines.length),
      );
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF231a3b), // Ungu gelap
              Color(0xFF622448), // Merah keunguan
              Color(0xFFd45145), // Oranye senja
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20 * scaleFactor),
              // judul 
              Text(
                "Lantas",
                textAlign: TextAlign.center,
                style: GoogleFonts.dancingScript(
                  fontSize: 60 * scaleFactor,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  // Efek cahaya dari belakang teks
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    Shadow(
                      blurRadius: 20.0,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
              Text(
                "Juicy Luicy",
                style: GoogleFonts.lato(
                  fontSize: 20 * scaleFactor,
                  fontStyle: FontStyle.italic,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 20 * scaleFactor),

              // --- LYRICS CONTAINER (TETAP DENGAN EFEK KACA) ---
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      16 * scaleFactor, 0, 16 * scaleFactor, 16 * scaleFactor),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20 * scaleFactor),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius:
                              BorderRadius.circular(20 * scaleFactor),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.2),
                            width: 1.5,
                          ),
                        ),
                        child: SingleChildScrollView(
                          controller: _scrollController,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16 * scaleFactor,
                              vertical: 8 * scaleFactor),
                          child: Column(
                            children: grouped.asMap().entries.map((entry) {
                              final index = entry.key;
                              final chunk = entry.value;

                              Widget lyricChunk = Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: chunk.map((line) {
                                  return Text(
                                    line,
                                    style: GoogleFonts.lato(
                                      fontSize: 17 * scaleFactor,
                                      color: Colors.white,
                                      height: 1.5,
                                    ),
                                  );
                                }).toList(),
                              );

                              Alignment alignment;
                              if (index % 2 == 0) {
                                alignment = Alignment.centerLeft;
                              } else {
                                alignment = Alignment.centerRight;
                                lyricChunk =
                                    IntrinsicWidth(child: lyricChunk);
                              }

                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 24 * scaleFactor),
                                child: Align(
                                  alignment: alignment,
                                  child: lyricChunk,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Project2(),
  ));
}