import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan2());
}

// class Percobaan1 extends StatelessWidget {
//   const Percobaan1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Mata Kuluah Satria Rakhmadani",
//       home: Scaffold(
//         appBar: AppBar(
//             title: Text(
//             "Satria Rakhmadani",
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//             ),
//           backgroundColor: Colors.blueAccent,
//           foregroundColor: Colors.yellow,
//           centerTitle: true,
//         ),
//         body: Align(
//           alignment: Alignment.topLeft,
//           child: Column(
//             // crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: Column(
//                   children: [
//                     Text("Balonku Ada Lima"),
//                     Text("A.T. Mahmud"),
//                   ],
//                 )
//               ),
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Column(
//                   children: [
//                     Text("Balonku ada lima \nRupa-rupa warnanya \nHijau, kuning, kelabu \nMerah muda dan biru"),
//                   ],
//                 )
//               ),
//               Align(
//                 alignment: Alignment.topRight,
//                 child: Column(
//                   children: [
//                     Text("Meletus balon hijau \nDOOOOR.... \nHatiku sangat kacau \nBalonku tinggal empat \nKupegang erat-erat"),
//                     Text("Meletus balon hijau \nDOOOOR.... \nHatiku sangat kacau \nBalonku tinggal empat \nKupegang erat-erat"),
//                   ],
//                 )
//               ),
//             ],
//           ),  
//         ),
//       ),
//     );
//   }
// }

class Percobaan2 extends StatelessWidget {
  const Percobaan2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mata Kuliah Satria Rakhmadani",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Satria Rakhmadani",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.yellow,
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: const [
                    Text("My Way"),
                    Text("Frank Sinatra"),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage('assets/images/myway.jpg'),
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: const [
                    Text("And now, the end is near\nAnd so I face the final curtain"),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: const [
                    Text("My friend, I'll say it clear\nI'll state my case, of which I'm certain"),
                    Text("I've lived a life that's full\nI traveled each and every highway"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
