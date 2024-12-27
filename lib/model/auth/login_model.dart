import 'dart:convert';
import 'package:crm_project/utils/urls/app_urls.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;


class LoginModel {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  // Method to perform login
  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(AppUrls.loginUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        // Parse the response and save the access token
        var data = json.decode(response.body);
        String accessToken = data['access_token']; // assuming response has this key

        // Save token securely
        await _secureStorage.write(key: 'access_token', value: accessToken);

        return {'success': true, 'message': 'Login successful', 'data': data};
      } else {
        // Handle login failure
        var data = json.decode(response.body);
        return {'success': false, 'message': data['message'] ?? 'Login failed'};
      }
    } catch (e) {
      return {'success': false, 'message': 'An error occurred'};
    }
  }
}
