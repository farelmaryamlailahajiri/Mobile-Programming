import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan7/simpleprofilelayout.dart';
import 'stateful.dart';
import 'stateless.dart';
import 'singlechild.dart';
import 'multichildcolumn.dart';
import 'multichildstack.dart';
import 'multichildlistview.dart';
import 'listview.dart';
import 'gridview.dart';
import 'stylingnpositioning.dart';

void main() => runApp(const MyApp());

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'stateful',
          builder: (BuildContext context, GoRouterState state) {
            return StatefulPage();
          },
        ),
        GoRoute(
          path: 'stateless',
          builder: (BuildContext context, GoRouterState state) {
            return StatelessPage();
          },
        ),
        GoRoute(
          path: 'singlechild',
          builder: (BuildContext context, GoRouterState state) {
            return SingleChildPage();
          },
        ),
        GoRoute(
          path: 'multichildcolumn',
          builder: (BuildContext context, GoRouterState state) {
            return MultiChildColumnPage();
          },
        ),
        GoRoute(
          path: 'multichildstack',
          builder: (BuildContext context, GoRouterState state) {
            return MultiChildStackPage();
          },
        ),
        GoRoute(
          path: 'multichildlistview',
          builder: (BuildContext context, GoRouterState state) {
            return Multichildlistview();
          },
        ),
        GoRoute(
          path: 'simpleprofilelayout',
          builder: (BuildContext context, GoRouterState state) {
            return SimpleProfileLayout();
          },
        ),
        GoRoute(
          path: 'listview',
          builder: (BuildContext context, GoRouterState state) {
            return ListViewPage();
          },
        ),
        GoRoute(
          path: 'gridview',
          builder: (BuildContext context, GoRouterState state) {
            return Gridview();
          },
        ),
        GoRoute(
          path: 'stylingnpositioning',
          builder: (BuildContext context, GoRouterState state) {
            return StylingAndPositioning();
          },
        ),
      ],
    ),
  ],
);

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}

/// The home screen
class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME ROUTE PAGE', style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.go('/stateful'),
              child: const Text('Go to the Stateful screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/stateless'),
              child: const Text('Go to the Stateless screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/singlechild'),
              child: const Text('Go to the SingleChild screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/multichildcolumn'),
              child: const Text('Go to the MultiChild Column screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/multichildstack'),
              child: const Text('Go to the MultiChild Stack screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/multichildlistview'),
              child: const Text('Go to the MultiChild ListView screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/simpleprofilelayout'),
              child: const Text('Go to the Simple Profile Layout screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/listview'),
              child: const Text('Go to the ListView screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/gridview'),
              child: const Text('Go to the GridView screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/stylingnpositioning'),
              child: const Text('Go to the Styling and Positioning screen'),
            ),
          ],
        ),
      ),
    );
  }
}
