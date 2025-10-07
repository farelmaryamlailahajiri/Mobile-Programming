import 'package:flutter/material.dart';

void main() {
  runApp(const MultiChild());
}

// Layout Multi Child

// class MultiChild extends StatelessWidget {
//   const MultiChild({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Multi Child Layout'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Ini baris pertama'),
//               Text('Ini baris kedua'),
//               Text('Ini baris ketiga'),
//               ElevatedButton(
//                 onPressed: (){}, 
//                 child: Text('Tombol')
//               ),
//             ]
//           ),
//         ),
//       ),
//     );
//   }
// }

// Stack Multi Child

// class MultiChild extends StatelessWidget {
//   const MultiChild({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Stack Multi Child'),
//         ),
//         body: Center(
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 width: 200,
//                 height: 200,
//                 color: Colors.blue,
//               ),
//               Container(
//                 width: 150,
//                 height: 150,
//                 color: Colors.green,
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.red,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// ListView Multi Child

// class MultiChild extends StatelessWidget {
//   const MultiChild({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('List View Multi Child'),
//         ),
//         body: ListView(
//           children: [
//             ListTile(
//               title: Text('Item 1'),
//               leading: Icon(Icons.star),
//             ),
//             ListTile(
//               title: Text('Item 2'),
//               leading: Icon(Icons.star),
//             ),
//             ListTile(
//               title: Text('Item 3'),
//               leading: Icon(Icons.star),
//             ),
//             ListTile(
//               title: Text('Item 4'),
//               leading: Icon(Icons.star),
//             ),
//             ListTile(
//               title: Text('Item 5'),
//               leading: Icon(Icons.star),
//             ),
//           ]
//         )
//       )
//     );
//   }
// }

// Grid View Multi Child

class MultiChild extends StatelessWidget {
  const MultiChild({super.key});

  @override
  Widget build(BuildContext context) {
    // List of different icons to display in each square
    final icons = [
      Icons.star,
      Icons.favorite,
      Icons.home,
      Icons.person,
      Icons.settings,
      Icons.phone,
      Icons.camera_alt,
      Icons.map,
      Icons.alarm,
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid Square'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(9, (index) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {
                  // Add your button action here
                },
                child: Center(
                  child: Icon(
                    icons[index],
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}