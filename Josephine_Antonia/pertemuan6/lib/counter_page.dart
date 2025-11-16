import 'package:flutter/material.dart';
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => CounterPageState();
}
class CounterPageState extends State<CounterPage> {
  int _counter = 0;
  void tambah() {
    setState(() {
      _counter++;
    });
  }
  void _kurang() {
    setState(() {
      _counter--;
    });
  }
  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration( 
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 163, 110, 46), Color.fromARGB(255, 114, 63, 8)], // Latar belakang ungu muda
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Nilai Counter Saat Ini:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
    
            Text(
              "$_counter",
              style: TextStyle(
                fontSize: 90, 
                fontWeight: FontWeight.w900, 
                color: Theme.of(context).primaryColor, 
              ),
            ),
            const SizedBox(height: 40),

            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: _kurang, 
                  icon: const Icon(Icons.remove), 
                  label: const Text("Kurang (-)", style: TextStyle(fontSize: 16)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 165, 10, 7), 
                    foregroundColor: Colors.white
                  ),
                ),
                const SizedBox(width: 15), 

                OutlinedButton.icon(
                  onPressed: _reset, 
                  icon: const Icon(Icons.refresh), 
                  label: const Text("Reset", style: TextStyle(fontSize: 16)), // const
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Theme.of(context).primaryColor,
                    side: BorderSide(color: Theme.of(context).primaryColor, width: 2),
                  ),
                ),
                const SizedBox(width: 15), 
                
                ElevatedButton.icon(
                  onPressed: tambah, 
                  icon: const Icon(Icons.add), 
                  label: const Text("Tambah (+)", style: TextStyle(fontSize: 16)), // const
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 8, 164, 16), 
                    foregroundColor: Colors.white
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 30),
            IconButton(
              onPressed: tambah, 
              icon: const Icon(Icons.thumb_up, color: Colors.blueAccent, size: 40), 
              tooltip: 'Like (Tambah Counter)',
            )
          ],
        ),
      ),
    );
  }
}