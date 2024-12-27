import 'package:crm_project/model/auth/login_model.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginModel _loginModel = LoginModel();
  String _errorMessage = '';

  String get errorMessage => _errorMessage;

  // Method to login and update UI based on result
  Future<void> login(String email, String password) async {
    var result = await _loginModel.login(email, password);
    
    if (result['success']) {
      _errorMessage = ''; // Clear error message on successful login
      // Navigate to next screen if needed
    } else {
      _errorMessage = result['message'];
    }

    notifyListeners(); // Update UI
  }
}
