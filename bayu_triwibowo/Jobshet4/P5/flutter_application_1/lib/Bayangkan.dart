import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const Lagu());
}

class Lagu extends StatefulWidget {
  const Lagu({super.key});

  @override
  State<Lagu> createState() => _PuisiAppState();
}

class _PuisiAppState extends State<Lagu> {
  final List<String> bait = [
    '''Pernahkah kau bayangkan,
jika kita tak pernah menyerah;
hadir sepenuhnya,
untuk setiap masalah yang kita hadapi.''',
    '''Pernahkah kau bayangkan,
bagaimana bila kita selamanya—
di ujung hari,
nama kita tercatat dalam sejarah.''',
    '''Bayangkan bila kita tidak menyerah,
membangun segala yang kita lamunkan.
Bagaimana pun, kau jaga aku,
di mana aku, kau pun di situ.''',
    '''Dalam tawa,
atau palung sedalam-dalamnya,
ku jaga kamu,
kau jaga aku.''',
    '''Bayangkan,
jika kita tidak menyerah.
Bayangkan…
jika kita tidak menyerah.''',
  ];

  int tampilBait = 1;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    // setiap 2 detik tambah bait baru
    timer = Timer.periodic(const Duration(seconds: 2), (t) {
      if (tampilBait < bait.length) {
        setState(() {
          tampilBait++;
        });
      } else {
        t.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bayangkan'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: tampilBait,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  bait[index],
                  style: const TextStyle(fontSize: 16, height: 1.5),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
