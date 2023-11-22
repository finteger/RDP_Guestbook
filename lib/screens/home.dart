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
      drawer: Drawer(
        backgroundColor: Colors.red,
        child: ListView(
          children: <Widget>[
            ListTile(
                title: Padding(
              padding: const EdgeInsets.all(28.0),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, route.homePage),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home),
                    Text("Home"),
                  ],
                ),
              ),
            )),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(28.0),
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, route.loginPage),
                  child: Icon(Icons.login),
                ),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(28.0),
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, route.settingsPage),
                  child: Icon(Icons.settings),
                ),
              ),
            ),
          ],
        ),
      ),
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
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'Login',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          onTap: (int index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, route.homePage);
                break;
              case 1:
                Navigator.pushNamed(context, route.loginPage);
                break;
              case 2:
                Navigator.pushNamed(context, route.settingsPage);
                break;
            }
          }),
    );
  }
}
