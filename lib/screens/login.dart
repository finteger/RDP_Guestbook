import 'package:flutter/material.dart';
import 'package:flutter_project/route/route.dart' as route;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
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
