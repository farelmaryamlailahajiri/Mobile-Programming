import 'package:app/counter.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int selectedIndex = 0;

  final List<Widget> pages = const [ProfileWidget(), Counter()];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      onItemTapped: onItemTapped,
      pages: pages,
      selectedIndex: selectedIndex,
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Widget> pages;
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const HomeScreen({
    required this.pages,
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return home();
  }

  Scaffold home() {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Basic App",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: navigation(),
    );
  }

  BottomNavigationBar navigation() {
    return BottomNavigationBar(
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.countertops),
          label: "Counter",
        ),
      ],
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // align to top
      children: [
        const SizedBox(width: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Image.network(
            "https://avatars.githubusercontent.com/u/68896885?v=4",
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hamdan Ubaidillah",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text("2341760190", style: TextStyle(color: Colors.grey)),
            Text("Teknologi Informasi", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
