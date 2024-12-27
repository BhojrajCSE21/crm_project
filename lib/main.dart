import 'package:crm_project/view_model/auth/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:crm_project/view/auth/screens/login_view.dart';
import 'package:crm_project/view/spalsh_screen/splash_screen.dart'; // Import the splash screen file
import 'package:crm_project/view/dashboard/screens/home_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LoginViewModel(), // Provide the LoginViewModel
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash', // Set the initial route to splash screen
      routes: {
        'splash': (context) => SplashScreen(), // Splash screen route
        'login': (context) => LoginView(),
        'home': (context) => HomePage(), // Home screen route
      },
    );
  }
}
