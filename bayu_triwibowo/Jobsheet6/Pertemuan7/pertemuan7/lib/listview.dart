import 'package:flutter/material.dart';

//bagian 2

// void main() {
//   runApp(const ListViewApp());
// }

// class ListViewApp extends StatelessWidget {
//   const ListViewApp({super.key});

//   final List<String> listData = const [
//     'Flutter',
//     'Dart',
//     'Kotlin',
//     'Java',
//     'C++',
//     'Python'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('List View Example'),
//           backgroundColor: Colors.blue,
//         ),
//         body: ListView.builder(
//           itemCount: listData.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: const Icon(Icons.code),
//               title: Text(listData[index]),
//               onTap: () {
//                 print('Klik: ${listData[index]}');
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

//bagaian 1
import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewApp());
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View Example'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: const [
            ListTile(title: Text('Item 1'), leading: Icon(Icons.star)),
            ListTile(title: Text('Item 2'), leading: Icon(Icons.favorite)),
            ListTile(title: Text('Item 3'), leading: Icon(Icons.home)),
          ],
        ),
      ),
    );
  }
}

      
  

