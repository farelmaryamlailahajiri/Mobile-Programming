import 'package:flutter/material.dart';

void main() {
  runApp(const sib3a());
}

class sib3a extends StatelessWidget {
  const sib3a({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', 
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Icon(Icons.account_circle, size: 48, color: Colors.white),
              Text(
                'Flutternya Lovelyta',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                'Subtitle',
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
              FlutterLogo(
                size: 48,
                style: FlutterLogoStyle.stacked,
                textColor: Colors.white,
              )
            ],
          ), 
        backgroundColor: Colors.lime,
        //leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings), Icon(Icons.search)
        ],
        ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            //color: Colors.limeAccent,
            //height: 200,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.limeAccent, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              //color: Colors.limeAccent,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star_half, color: Colors.amber),
                      Icon(Icons.star_border, color: Colors.amber),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add your button action here
                    },
                    child: const Text('Click Me', style: TextStyle(fontSize: 16)),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your button action here
                      print('Text Button Pressed');
                    },
                    child: const Text('Text Button'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Add your button action here
                    },
                    child: const Text('Outlined Button'),
                  ),
                  IconButton(
                    onPressed: () {
                      // Add your button action here
                      print('Icon Button Pressed');
                    },
                    icon: const Icon(Icons.favorite, color: Colors.pinkAccent),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
        
        
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'ini tombol',
          child: const Icon(Icons.add), 
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu Drawer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('Contact Us'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ] ,
        ),
      ),
    );
  }
}
