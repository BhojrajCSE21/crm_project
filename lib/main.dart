import 'package:flutter/material.dart';
import 'package:crm_project/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login': (context) => MyLogin()},
  ));
}
