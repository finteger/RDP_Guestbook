import 'package:flutter/material.dart';
import 'package:flutter_project/route/route.dart' as route;

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
                "Routing Example",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Icon(Icons.notifications),
            ]),
      ),
      drawer: const Drawer(),
      body: Center(
        child: ElevatedButton(
          child: Text("Settings Page"),
          onPressed: () => Navigator.pushNamed(context, route.settingsPage),
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
