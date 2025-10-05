import 'package:flutter/material.dart';

void main() {
  runApp(const XXLApp());
}

class XXLApp extends StatelessWidget {
  const XXLApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const XXLPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class XXLPage extends StatefulWidget {
  const XXLPage({super.key});

  @override
  State<XXLPage> createState() => _XXLPageState();
}

class _XXLPageState extends State<XXLPage> {
  int _currentIndex = 0;

  final List<Map<String, dynamic>> _sections = [
    {
      'title': 'Verse 1',
      'lines': [
        "All my favorite songs are from 2018",
        "We flew around the world with our small-town dreams",
        "You're a superstar and you wear it so well",
        "But nothin' like you in my hoodie double XL",
      ],
      'color': Colors.purple,
    },
    {
      'title': 'Pre-Chorus',
      'lines': [
        "Bloodstream full of desert lightnin'",
        "Thank God I'm not drivin'",
        "A blur the whole way home",
      ],
      'color': Colors.blue,
    },
    {
      'title': 'Chorus',
      'lines': [
        "I still remember, I will forever",
        "Backseat secrets we won't ever tell, I miss you double XL",
        "Miss Americana and all my friends love ya",
        "Back patio at the Bowery Hotel, I miss you double XL",
      ],
      'color': Colors.red,
    },
    {
      'title': 'Verse 2',
      'lines': [
        "You've been goin' out in the glitter and glow",
        "Hollywood fades and it's startin' to show",
        "I'm barely hangin' on and I'm lookin' for help",
        "Every night without you hurtin' double XL",
      ],
      'color': Colors.orange,
    },
    {
      'title': 'Bridge',
      'lines': [
        "Baby, we'll always have California",
        "Half of me will always be waitin' for ya",
      ],
      'color': Colors.teal,
    },
    {
      'title': 'Final Chorus',
      'lines': [
        "I still remember, I will forever",
        "Backseat secrets we won't ever tell, I miss you double XL",
        "Miss Americana and all my friends love ya",
        "Back patio at the Bowery Hotel, I miss you double XL",
        "Baby, we'll always have California",
        "Half of me will always be waitin' for ya",
      ],
      'color': Colors.deepPurple,
    },
  ];

  void _nextSection() {
    setState(() {
      if (_currentIndex < _sections.length - 1) {
        _currentIndex++;
      }
    });
  }

  void _previousSection() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentSection = _sections[_currentIndex];
    final color = currentSection['color'] as Color;

    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              'assets/images/foto_nazwa.png', // FOTO NAZWA
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.white.withOpacity(0.3),
                  child: const Icon(Icons.person, color: Colors.white),
                );
              },
            ),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nazwa Nurul Wijaya',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              '2341760045',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        backgroundColor: color,
        centerTitle: false,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color.withOpacity(0.1),
              color.withOpacity(0.3),
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: [
            // FOTO LANNY + JUDUL LAGU
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Foto Lanny
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(color: color, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        'assets/images/foto_lanny.png', 
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[200],
                            child: Icon(
                              Icons.music_note,
                              size: 50,
                              color: color,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  // Judul Lagu dan Penyanyi
                  Text(
                    'XXL',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                  Text(
                    'Lanny',
                    style: TextStyle(
                      fontSize: 20,
                      color: color.withOpacity(0.8),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  // Bagian Lagu (Verse 1, Chorus, dll)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      currentSection['title'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // LIRIK LAGU
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    for (String line in currentSection['lines'] as List<String>)
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          line,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            height: 1.4,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),

            // TOMBOL NAVIGASI
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _previousSection,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color,
                      foregroundColor: Colors.white,
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.arrow_back),
                        SizedBox(width: 5),
                        Text('Previous'),
                      ],
                    ),
                  ),
                  
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      '${_currentIndex + 1}/${_sections.length}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                  ),
                  
                  ElevatedButton(
                    onPressed: _nextSection,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color,
                      foregroundColor: Colors.white,
                    ),
                    child: const Row(
                      children: [
                        Text('Next'),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}