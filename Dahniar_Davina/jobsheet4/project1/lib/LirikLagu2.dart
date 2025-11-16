import 'package:flutter/material.dart';

void main() {
  runApp(const XXLApp());
}

class XXLApp extends StatelessWidget {
  const XXLApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: XXLPage(),
    );
  }
}

class XXLPage extends StatelessWidget {
  const XXLPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0F2027),
              Color(0xFF203A43),
              Color(0xFF2C5364),
              Color.fromARGB(255, 84, 132, 151),
              Color.fromARGB(255, 108, 155, 176),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Baris cover album + judul
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://i1.sndcdn.com/artworks-XqCSKD1oo9vs-0-t500x500.jpg",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "XXL",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "LANY (2023)",
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // Kotak transparan untuk lirik di tengah
                Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 600, // biar rapi, tidak terlalu lebar
                    ),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white24, width: 1),
                    ),
                    child: const Text(
                      "All my favorite songs are from 2018\n"
                      "We flew around the world with our small-town dreams\n"
                      "You're a superstar and you wear it so well\n"
                      "But nothin' like you in my hoodie double XL\n\n"

                      "Bloodstream full of desert lightnin'\n"
                      "Thank God I'm not drivin'\n"
                      "A blur the whole way home\n\n"

                      "I still remember, I will forever\n"
                      "Backseat secrets we won't ever tell, I miss you double XL\n"
                      "Miss Americana and all my friends love ya\n"
                      "Back patio at the Bowery Hotel, I miss you double XL\n\n"

                      "You've been goin' out in the glitter and glow\n"
                      "Hollywood fades and it's startin' to show\n"
                      "I'm barely hangin' on and I'm lookin' for help\n"
                      "Every night without you hurtin' double XL\n\n"

                      "Baby, we'll always have California\n"
                      "Half of me will always be waitin' for ya\n"
                      "Baby, we'll always have California\n"
                      "Half of me will always be waitin' for ya (I miss you double XL)\n",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
