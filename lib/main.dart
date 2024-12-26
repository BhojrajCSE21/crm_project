import 'package:flutter/material.dart';
import 'package:crm_project/view/auth/screens/login_view.dart';
import 'package:crm_project/view/spalsh_screen/splash_screen.dart'; // Import the splash screen file
import 'package:crm_project/view/dashboard/screens/home_view.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash', // Set the initial route to splash screen
    routes: {
      'splash': (context) => SplashScreen(), // Splash screen route
      'login': (context) => MyLogin(), // Login screen route
      'home': (context) => HomePage(), // Home screen route
    },
  ));
}
