import 'package:app/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(), theme: _buildTheme());
  }

  ThemeData _buildTheme() {
    final ThemeData baseTheme = ThemeData();
    return baseTheme.copyWith(
      textTheme: GoogleFonts.ubuntuSansTextTheme(baseTheme.textTheme),
    );
  }
}
