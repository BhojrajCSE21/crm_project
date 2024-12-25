import 'package:flutter/material.dart';
import 'package:crm_project/login.dart';
import 'package:crm_project/splash_screen.dart'; // Import the splash screen file

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash', // Set the initial route to splash screen
    routes: {
      'splash': (context) => SplashScreen(), // Splash screen route
      'login': (context) => MyLogin(), // Login screen route
    },
  ));
}
