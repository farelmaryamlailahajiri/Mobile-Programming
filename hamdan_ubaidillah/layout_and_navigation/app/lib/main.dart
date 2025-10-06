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
  Home({super.key});
  final List<int> items = [1, 2, 3, 4];

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

  ListView body() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.code),
          title: Text("${items[index]}"),
          onTap: () => print("${items[index]}"),
        );
      },
    );
  }
}
