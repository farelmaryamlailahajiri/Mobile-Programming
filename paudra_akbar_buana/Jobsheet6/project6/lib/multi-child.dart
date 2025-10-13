import 'package:flutter/material.dart';

void main() {
  runApp( ColumnExample());
}

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This trailing comma makes auto-formatting nicer for build methods.
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Column')),
          
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('Ini baris pertama'),
             Text('Ini baris kedua'),
            ElevatedButton(onPressed: () {}, 
            child: Text('Tombol'),
         ),
       ],
     ),
    ),
   );
  }
 }