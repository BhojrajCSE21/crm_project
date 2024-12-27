import 'package:crm_project/view_model/auth/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LoginView extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<LoginViewModel>(
          builder: (context, viewModel, child) {
            return Column(
              children: [
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                if (viewModel.errorMessage.isNotEmpty)
                  Text(
                    viewModel.errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    String email = _emailController.text.trim();
                    String password = _passwordController.text.trim();
                    if (email.isNotEmpty && password.isNotEmpty) {
                      viewModel.login(email, password);
                    }
                  },
                  child: Text("Login"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
