import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

//WIDGET DINAMIS
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Belajar Stateful Widget")),
        body: Center(
          child: MyStateful(),
        ),
      ),
    );
  }
}

class MyStateful extends StatefulWidget {
  const MyStateful({super.key});

  @override
  State<MyStateful> createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  int counter = 0;

  void tambah() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Counter: $counter",
          style: const TextStyle(fontSize: 24),
        ),
        ElevatedButton(
          onPressed: tambah,
          child: const Text("Tambah"),
        ),
      ],
    );
  }
}

//WIDGET STATIS
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Stateless Widget',
      home: Scaffold(
        appBar: AppBar(title: Text("Belajar Stateless Widget")),
        body: MyStateless(),
      ),
    );
  }
}

class MyStateless extends StatelessWidget {
  const MyStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Ini Stateless Widget"),
    );
  }
}
*/

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final imagePath = 'D:/Mobile-Programming/reza_angelina_febriyanti/domba.jpeg';

    return MaterialApp(
      title: 'Contoh Scaffold',
      home: Scaffold(
        //CONTOH SCAFOLD & APPBAR
        appBar: AppBar(
          //title: const Text("Contoh Scaffold"),
          title: const Text("Belajar Scaffold & AppBar"),
          backgroundColor: Colors.teal,
          actions: const [
            Icon(Icons.search),
            Icon(Icons.settings),
          ],
        ),
        /*
        body: const Center(
          //child: Text("Halo Flutter!"),
          child: Text("Ini Body Aplikasi"),
        ),
        */
        //COLUMN
        /*
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Baris 1"),
            Text("Baris 2"),
            Text("Baris 3"),
          ],
        ),
        */
        //ROWS
        /*
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.home, size: 40),
            Icon(Icons.star, size: 40),
            Icon(Icons.settings, size: 40),
          ],
        ),
        */
        //COLUMN & ROWS
        /*
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Baris 1"),
            Text("Baris 2"),
            Text("Baris 3"),
            SizedBox(height: 20), // beri jarak
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, size: 40),
                Icon(Icons.star, size: 40),   // <- perbaikan: Icon(Icons.start) tidak ada
                Icon(Icons.settings, size: 40),
              ],
            ),
          ],
        ),
        */
        //CONTAINER
        /*
        body: Container(
          width: 200,
          height: 100,
          color: Colors.amber,
          child: const Center(
            child: Text("Halo Flutter"),
          ),
        ),
        */
        //PADDING & MARGIN
        /*
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            color: Colors.blue,
            child: const Text(
              "Dengan Margin & Padding",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        */
        //DEKORASI & BORDER
        /*
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 3),
            ),
          ),
        ),
        */
        //GRADIENT BACKGROUND
        /*
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            ),
            child: const Center(
              child: Text(
                "Gradient Container",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
        */
        //ALIGNMENT
        /*
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.orange,
            alignment: Alignment.bottomRight,
            child: const Text("Sudut kanan bawah"),
          ),
        ),
        */
        //ELEVATED BUTTON
        /*
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print("Elevated Button ditekan!");
            },
            child: const Text('Elevated Button'),
          ),
        ),
        */
        //TEXT BUTTON
        /*
        body: Center(
          child: TextButton(
            onPressed: () {
              print("Text Button ditekan!");
            },
            child: const Text("Text Button"),
          ),
        ),
        */
        //OUTLINED BUTTON
        /*
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              print("Outlined Button ditekan!");
            },
            child: const Text("Outlined Button"),
          ),
        ),
        */
        //ICON BUTTON
        /*
        body: Center(
          child: IconButton(
            icon: const Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              print("Icon Button ditekan!");
            },
          ),
        ),
        */
        //FLOATING ACTION BUTTON
        /*
        body: Center(
          child: FloatingActionButton(
            onPressed: () {
              print("Floating Action Button ditekan!");
            },
            child: const Icon(Icons.add),
          ),
        ),
        */
        //FLUTTER LOGO
        /*
        body: const Center(
          child: FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.horizontal,
            textColor: Colors.blue,
          ),
        ),
        */
        //ICON
        /*
        body: const Icon(
          Icons.home,
          size: 50,
          color: Colors.blue,
        ),
        */
        //IMAGE
        /*
        body: Center(
          //child: Image.asset('assets/penthouse.png'), //with assets
          child: Image.network(
            "https://flutter.dev/images/flutter-logo-sharing.png",
            width: 150,
          ), //with network
        ),
        */
        //IMAGE DARI FILE LOKAL
        /*
        body: Center(
          child: Image.file(
            File(imagePath),
            width: 200,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        */
        //PLACEHOLDER
        /*
        body: const Center(
          child: Placeholder(
            fallbackWidth: 100,
            fallbackHeight: 100,
            color: Colors.red,
          ),
        ),
        */
        //Flutter Logo, Icon, Image, Placeholder
        /*
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FlutterLogo(size: 80),
              Icon(Icons.star, color: Colors.orange, size: 50),
              Image(
                image: NetworkImage("https://flutter.dev/images/flutter-logo-sharing.png"),
                width: 120,
              ),
              Placeholder(fallbackHeight: 100, fallbackWidth: 100),
            ],
          )
        ),
        */
        //TEXT
        /*
        body: const Center(
          child: Text(
            "Belajar Flutter",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold, // <-- perbaikan di sini
              fontStyle: FontStyle.italic,
              color: Colors.blue,
              letterSpacing: 2,
              wordSpacing: 5,
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        */
        //FONT
        /*
        body: const Center(
          child: Text(
            "Custom Font",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 24,
            ),
          ),
        ),
        */
        //TEXT MENGGUNAKAN GOOGLE FONT
        body: Center(
          child: Text(
            "Teks dengan Google Fonts",
            style: GoogleFonts.lobster(
              fontSize: 30,
              color: Colors.red,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // aksi tombol tambah
          },
          child: const Icon(Icons.add),
        ),
        //DRAWER
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                color: Colors.teal,
              ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(leading: Icon(Icons.message), title: Text('Messages')),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ],
          ),
        ),
        //BOTTOM NAVIGATION BAR
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ]
        ),
      )
    );
  }
}
*/
/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/