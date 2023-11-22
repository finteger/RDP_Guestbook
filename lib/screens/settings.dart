import 'package:flutter/material.dart';
import 'package:flutter_project/route/route.dart' as route;

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Home Page"),
          onPressed: () => Navigator.pushNamed(context, route.homePage),
        ),
      ),
    );
  }
}
