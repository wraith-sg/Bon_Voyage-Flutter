import 'package:bonvoyage/authentication/registration/topMenu.dart';
import 'package:bonvoyage/authentication/registration/register_body.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: [
          Menu(),
          Body(),
        ],
      ),
    );
  }
}