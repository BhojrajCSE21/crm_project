// lib/views/login_view.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import '../view_models/login_view_model.dart';
import '/../view_model/auth/login_view_model.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginViewModel(),
      child: Scaffold(
        body: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 390),
              child: Text(
                "Welcome to \nLogin Page",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.54,
                  left: 30,
                  right: 30),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) => viewModel.setEmail(value),
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    onChanged: (value) => viewModel.setPassword(value),
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  SizedBox(height: 25),
                  if (viewModel.error != null)
                    Text(
                      viewModel.error!,
                      style: TextStyle(color: Colors.red),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blue,
                        child: viewModel.isLoading
                            ? CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : IconButton(
                                icon: Icon(Icons.arrow_forward),
                                color: Colors.white,
                                onPressed: () async {
                                  bool success = await viewModel.login();
                                  if (success) {
                                    Navigator.pushNamed(context, 'home');
                                  }
                                },
                              ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
