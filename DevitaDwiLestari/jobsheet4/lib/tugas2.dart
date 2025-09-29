import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan2());
}

class Percobaan2 extends StatelessWidget {
  const Percobaan2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khloe Rose - Fictional', // Judul aplikasi
      home: Scaffold(
        // Struktur dasar layar: AppBar + Body
        appBar: AppBar(
          title: const Text(
            'Khloe Rose - Fictional', // Judul di AppBar
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lobster', // font khusus
            ),
          ),
          backgroundColor: Colors.purple, // warna background AppBar
          foregroundColor: Colors.white, // warna teks di AppBar
        ),
        // Body layar
        body: Container(
          // Container bisa diberi dekorasi, di sini untuk background image
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.jpg"), // gambar background
              fit: BoxFit.cover, // supaya gambar menutupi seluruh layar
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0), // jarak dari pinggir layar
            child: SingleChildScrollView(
              // Supaya teks panjang bisa di-scroll
              child: Center(
                child: DefaultTextStyle(
                  // Mengatur style default untuk semua Text di bawahnya
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // teks putih supaya terlihat di atas gambar
                  ),
                  textAlign: TextAlign.center, // rata tengah semua teks
                  child: Column(
                    children: [
                      // Judul lagu
                      Text(
                        'Fictional\nby Khloe Rose',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20), // jarak antar blok teks
                      
                      // Lirik lagu
                      Text("Well, I guess the third time's not a charm"),
                      Text("Nursing a three times broken heart"),
                      Text("And down the rabbit hole again"),
                      Text("I put myself in another world"),
                      Text("Where I can be any other girl"),
                      Text("'Cause I don't really wanna face it"),
                      Text("'Cause, if it isn't real"),
                      Text("You can pretend all you want"),
                      Text("It's all you'll ever need"),
                      Text("\"That's not healthy,\" they said"),
                      Text("\"To live in your head\""),
                      Text("But it hurts a lot less to me"),
                      SizedBox(height: 10), // jarak antar bait

                      Text("I fall in love with boys I see on a TV screen"),
                      Text("The ones in books who are as perfect as they can be"),
                      Text("I spend all of my time imagining"),
                      Text("What it would be like if they existed"),
                      Text("My parents tell me I should look for one in real life"),
                      Text("But I get let down by both the bad boys and the nice guys"),
                      Text("I'm tired of giving more than I receive"),
                      Text("So, I'll just stick to the boys"),
                      Text("Who don't know me"),
                      SizedBox(height: 10), // jarak antar bait

                      Text("Oh, I hid his number, I almost called"),
                      Text("Like, maybe he's hurting after all"),
                      Text("I can't afford to be that naïve"),
                      Text("I'll just keep wishing it was me"),
                      Text("In that ending scene"),
                      Text("Where they're meeting up halfway"),
                      Text("And they're kissing in the rain"),
                      Text("It's a little bit cliché"),
                      Text("But I love it anyway"),
                      Text("'Cause it's better than when you're walking home"),
                      Text("And the rain starts pouring"),
                      Text("But you're all alone"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
