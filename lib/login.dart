import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
      image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(

              padding: EdgeInsets.only(left: 30, top: 170),
              child: Text("Login Page", style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5, left: 30, right: 30),
              child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)))),
                SizedBox(height: 25,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)))),
              ],
              ),
            )

          ],
        ),
      ),
      );

  }
}
