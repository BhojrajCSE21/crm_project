import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  // Check if the user is logged in or not
  Future<void> _checkLoginStatus() async {
    String? accessToken = await _secureStorage.read(key: 'access_token');
    
    // Navigate to the appropriate screen based on login status
    if (accessToken != null) {
      // User is logged in, go to home
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacementNamed(context, 'home');
      });
    } else {
      // User is not logged in, go to login
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacementNamed(context, 'login');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(), // Display a loading indicator while checking login status
      ),
    );
  }
}
