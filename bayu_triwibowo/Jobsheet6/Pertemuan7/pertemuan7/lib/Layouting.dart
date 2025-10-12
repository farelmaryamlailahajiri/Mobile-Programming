import 'package:flutter/material.dart';

// void main() {
//   runApp(SingleChildExample());
// }

// SingleChildLayout
// class SingleChildExample extends StatelessWidget {
//   const SingleChildExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Single Child Layout Example' ),
          
//           backgroundColor: Colors.blue,
//         ),
//         body: Center(
//           child: Text(
//             'Hello Bayu Triwibowo',
//             style: TextStyle(fontSize: 25, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        
//           ),
//         ),
//       ),
//     );
//   }
// } 

// MultiChildLayout

// void main() {
//   runApp(MultiChildExample());
// }
// class MultiChildExample extends StatelessWidget {
//   const MultiChildExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Multi Child Layout Example' ),
          
//           backgroundColor: Colors.blue,
//         ),
//         body: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Hello Bayu Triwibowo',
//                 style: TextStyle(fontSize: 25, fontFamily: 'Poppins', fontWeight: FontWeight.bold),                
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 'Hello Bayu Triwibowo',
//                 style: TextStyle(fontSize: 25, fontFamily: 'Poppins', fontWeight: FontWeight.bold),                
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 'Bayu Triwibowo',
//                 style: const TextStyle(fontSize: 25, fontFamily: 'Poppins', fontWeight: FontWeight.bold),                
//               ),
//             ],
//           ),
//         ),
//       );
//   }
// } 


//Stack
void main() {
  runApp(StackExample());
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack Layout Example'),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 200,
              width: 200,
            ),
            Container(
              color: Colors.red,              
              height: 200,
              width: 200,
            ),
            Text(
             'TUMPUK!!',
             style: TextStyle(fontSize: 25, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
            ),
          ],                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
        ),
      ),
    ); 
  }
}
