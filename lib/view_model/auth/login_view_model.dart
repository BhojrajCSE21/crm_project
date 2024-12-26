// lib/viewmodels/login_viewmodel.dart

import 'package:flutter/material.dart';

class LoginViewModel with ChangeNotifier {
  String _email = '';
  String _password = '';
  bool _isLoading = false;
  String? _error;

  // Getters
  String get email => _email;
  String get password => _password;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Setters
  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  Future<bool> login() async {
    _isLoading = true;
    notifyListeners();

    // Simulating an API call
    await Future.delayed(Duration(seconds: 2));

    if (_email == "user@example.com" && _password == "password123") {
      _isLoading = false;
      _error = null;
      notifyListeners();
      return true;
    } else {
      _isLoading = false;
      _error = "Invalid credentials. Please try again.";
      notifyListeners();
      return false;
    }
  }
}
