import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: body(),
    );
  }

  Stack body() {
    return Stack(
      children: [
        Text("lorem"),
        Text("lorem"),
        Text("lorem"),
        ElevatedButton(onPressed: () => {}, child: Text("data")),
      ],
    );
  }
}
