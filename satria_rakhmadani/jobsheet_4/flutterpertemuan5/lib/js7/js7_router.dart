import 'package:flutter/material.dart';

void main() {
  final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomePage()),
      GoRoute(path: '/about', builder: (context, state) => AboutPage()),
    ]
  );

  runApp(MaterialApp.router(
    routerConfig: router,
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/about');
          },
          child: Text('Go to About Page'),
        ),
      ),
    );
  }
}

