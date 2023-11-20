import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = ["One", "Two", "Three"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "My First Flutter App",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Icon(Icons.notifications),
            ]),
      ),
      drawer: Drawer(),
      body: Container(
        height: 290,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 62, 16, 16),
        ),
        child: const Image(
          image: AssetImage("assets/images/cat.webp"),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.last_page),
          label: 'Page',
        ),
      ]),
    );
  }
}
