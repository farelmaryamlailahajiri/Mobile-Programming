import 'package:flutter/material.dart';

void main() {
  runApp(const LyricsApp());
}

class LyricsApp extends StatelessWidget {
  const LyricsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lyrics Music - Alvi Choirinnikmah',
      home: Scaffold(
        backgroundColor: Colors.black, // background dasar hitam
        // Tumpukan AppBar dan body
        appBar: AppBar(
          title: Text(
            'Lyrics Music 🎵 - By Alvi Choi',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),

        body: Center(
          child: Container(
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: Colors.grey.withOpacity(0.5), // abu-abu transparan
              borderRadius: BorderRadius.circular(16),
            ),
            child: SingleChildScrollView(
              // Bagian teks rata kiri
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      // Tambahkan cover album disin
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTseKTr5WfxRQ_j2npP5Q8Q05ocBotJGu2bYw&s',
                            ),
                            width: 65,
                            height: 65,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),

                      const Text(
                        'Love Yourself - Justin Bieber',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  // Tombol play di bawah judul dan cover
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 300,
                          height: 3,
                          color: Colors.grey[600],
                          child: Container(
                            width: 60,
                            height: 3,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Bagian 1 - Rata kiri
                  const Text(
                    'For all the times that you rain on my parade\n'
                    'And all the clubs you get in using my name\n'
                    'You think you broke my heart, oh girl for goodness sake\n'
                    'You think I\'m crying on my own, well I ain\'t\n',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(height: 10),

                  // Bagian 2 - Rata kanan
                  const Text(
                    'And I didn\'t wanna write a song\n'
                    '\'Cause I didn\'t want anyone thinking I still care\n'
                    'I don\'t, But you still hit my phone up\n'
                    'And baby I be movin\' on and I think you should be somethin\'\n'
                    'I don\'t wanna hold back\n'
                    'Maybe you should know that\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),
                  // Bagian 3 - Rata kiri
                  const Text(
                    'My mama don\'t like you and she likes everyone\n'
                    'And I never like to admit that I was wrong\n'
                    'And I\'ve been so caught up in my job, didn\'t see what\'s going on\n'
                    'But now I know, I\'m better sleeping on my own\n',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(height: 10),

                  // Bagian 4 - Rata kanan
                  const Text(
                    '\'Cause if you like the way you look that much\n'
                    'Oh baby, you should go and love yourself\n'
                    'And if you think that I\'m still holdin\' on to somethin\'\n'
                    'You should go and love yourself\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Bagian 5 - Rata kiri
                  const Text(
                    'For all the times you made me feel small\n'
                    'I fell in love, now I\'m all gone\n'
                    'I\'m not thinkin\' bout you\n'
                    'And I\'m not thinkin\' bout you\n',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(height: 10),

                  // Bagian 6 - Rata tengah
                  Center(
                    child: const Text(
                      'You should go and love yourselft...',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ], // children
              ),
            ),
          ),
        ),
      ),
    );
  }
}
