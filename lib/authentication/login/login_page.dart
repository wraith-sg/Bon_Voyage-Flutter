import 'package:bonvoyage/authentication/login/topMenu.dart';
import 'package:bonvoyage/authentication/login/login_body.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: [
           Menu(),
           Body()
        ],
      ),
    );
  }
}



