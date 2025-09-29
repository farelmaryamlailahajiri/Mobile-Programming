// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Percobaan1());
// }

// class Percobaan1 extends StatelessWidget {
//   const Percobaan1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Balonku Ada Lima",
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: const Text(
//             "VERA EFITA HUDI PUTRI",
//             style: TextStyle(
//               fontSize: 26,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//               letterSpacing: 1,
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: const Color.fromARGB(255, 50, 6, 173),
//           elevation: 5,
//         ),
//         body: SingleChildScrollView(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Judul
//               Text(
//                 "Balonku Ada Lima",
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 8),
//               // Sub Judul
//               Text(
//                 "Lagu Lagu Anak Indonesia",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontStyle: FontStyle.italic,
//                   color: Colors.grey,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 8),
//               // Penulis
//               Text(
//                 "Penulis lagu: A.T. Mahmud",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                   color: const Color.fromARGB(255, 69, 5, 180),
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 30),

//               // Lirik bagian pertama dengan background biru muda
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(16),
//                 margin: const EdgeInsets.only(bottom: 20),
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 255, 233, 168),
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.3),
//                       blurRadius: 6,
//                       offset: const Offset(2, 4),
//                     ),
//                   ],
//                 ),
//                 child: const Text(
//                   "Balonku ada lima\n"
//                   "Rupa-rupa warnanya\n"
//                   "Hijau, kuning, kelabu\n"
//                   "Merah muda dan biru",
//                   style: TextStyle(fontSize: 18, height: 1.6),
//                   textAlign: TextAlign.left,
//                 ),
//               ),

//               // Lirik bagian kedua dengan background kuning lembut
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 255, 233, 168),
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.3),
//                       blurRadius: 6,
//                       offset: const Offset(2, 4),
//                     ),
//                   ],
//                 ),
//                 child: RichText(
//                   textAlign: TextAlign.right,
//                   text: TextSpan(
//                     style: const TextStyle(
//                       fontSize: 18,
//                       height: 1.6,
//                       color: Colors.black,
//                     ),
//                     children: [
//                       const TextSpan(text: "Meletus balon hijau, "),
//                       TextSpan(
//                         text: "DOR!!",
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.red, // biar lebih dramatis 💥
//                         ),
//                       ),
//                       const TextSpan(
//                         text:
//                             "\nHatiku sangat kacau\nBalonku tinggal empat\nKupegang erat-erat",
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(const LaguHindia());
}

class LaguHindia extends StatelessWidget {
  const LaguHindia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rumah ke Rumah - Hindia",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "VERA EFITA HUDI PUTRI",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.5,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          elevation: 6,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Judul utama
              const Text(
                "RUMAH KE RUMAH",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),

              // Subjudul
              const Text(
                "Lagu Hindia",
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),

              // Penulis
              Text(
                "Penulis lagu: Baskara Putra & Rayhan Noor",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  color: Colors.indigo[700],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),

              // Verse 1
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.indigo.shade100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      blurRadius: 6,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                child: const Text(
                  "Jika dahulu ku tak cepat berubah\n"
                  "Ini maafku untukmu Sharfina\n"
                  "Segala doa yang baik adanya\n"
                  "Untukmu dan mimpimu yang mulia",
                  style: TextStyle(fontSize: 18, height: 1.6),
                  textAlign: TextAlign.left,
                ),
              ),

              // Chorus 1
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.orange.shade100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      blurRadius: 6,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                child: const Text(
                  "Pindah berkala rumah ke rumah\n"
                  "Berharap bisa berujung indah\n"
                  "Walau akhirnya harus berpisah\n"
                  "Trima kasih karna ku tak mudah",
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.6,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Chorus 2
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.pink.shade100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      blurRadius: 6,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                child: const Text(
                  "Pindah berkala rumah ke rumah\n"
                  "Berharap bisa berujung indah\n"
                  "Walau akhirnya harus berpisah\n"
                  "Trima kasih karna ku tak mudah",
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.6,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

