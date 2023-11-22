import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home.dart';
import 'package:flutter_project/screens/login.dart';
import 'package:flutter_project/screens/settings.dart';

//Specify the route names

const String loginPage = 'Login Page';
const String homePage = 'Home Page';
const String settingsPage = 'Settings Page';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case homePage:
      return MaterialPageRoute(builder: (context) => homePage());
    case settingsPage:
      return MaterialPageRoute(builder: (context) => settingsPage());
    default:
      throw ('This route name does not exist!');
  }
}
