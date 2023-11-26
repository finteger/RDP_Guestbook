// Import the necessary Flutter packages.
import 'package:flutter/material.dart';

// Import the screens that will be used as pages in the app.
import 'package:flutter_project/screens/home.dart';
import 'package:flutter_project/screens/login.dart';
import 'package:flutter_project/screens/settings.dart';

// Specify the route names as constants.
const String loginPage = 'Login Page';
const String homePage = 'Home Page';
const String settingsPage = 'Settings Page';

// Create a function that acts as a controller for routing.
Route<dynamic> controller(RouteSettings settings) {
  // Use a switch statement to handle different route names.
  switch (settings.name) {
    // If the route name is 'Login Page', return the LoginPage widget.
    case loginPage:
      return MaterialPageRoute(builder: (context) => LoginPage());
    // If the route name is 'Home Page', return the HomePage widget.
    case homePage:
      return MaterialPageRoute(builder: (context) => HomePage());
    // If the route name is 'Settings Page', return the SettingsPage widget.
    case settingsPage:
      return MaterialPageRoute(builder: (context) => SettingsPage());
    // If the route name does not match any of the specified cases, throw an error.
    default:
      throw ('This route name does not exist!');
  }
}

