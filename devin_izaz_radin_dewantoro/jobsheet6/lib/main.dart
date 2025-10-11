import 'package:flutter/material.dart';

// void main() {
//   runApp(ColumnExample());
// }

// class ColumnExample extends StatelessWidget {
//   const ColumnExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Contoh Column')),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Ini baris pertama'),
//             Text('Ini baris kedua'),
//             ElevatedButton(onPressed: () {}, child: Text('Tombol')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(StackExample());
// }

// class StackExample extends StatelessWidget {
//   const StackExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Contoh Stack')),
//         body: Center(
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(width: 200, height: 200, color: Colors.blue[100]),
//               Container(width: 150, height: 150, color: Colors.blue[300]),
//               Container(width: 100, height: 100, color: Colors.blue[800]),
//               Container(width: 50, height: 50, color: Colors.blue[900]),
//               Text(
//                 'Tumpuk!',
//                 style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(ListViewExample());
// }

// class ListViewExample extends StatelessWidget {
//   const ListViewExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Contoh ListView')),
//         body: ListView(
//           children: [
//             ListTile(title: Text('Item 1'), leading: Icon(Icons.star)),
//             ListTile(title: Text('Item 2'), leading: Icon(Icons.favorite)),
//             ListTile(title: Text('Item 3'), leading: Icon(Icons.home)),
//           ],
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(ProfileLayout());
}

class ProfileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Profil')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/devin.jpg"),
          ),
          SizedBox(height: 10),
          Text(
            'Devin Izaz Radin Dewantoro',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text('Flutter Developer', style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    );
  }
}
