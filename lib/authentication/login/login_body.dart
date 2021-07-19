import 'package:bonvoyage/authentication/login/login_form.dart';
import 'package:bonvoyage/authentication/registration/register.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In to \nMy Application',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "If you don't have an account you can",
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text(
                      " Register Here!",
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0xFF6F35A5),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'images/illustration-2.png',
                width: 300,
              ),
            ],
          ),
        ),
        MediaQuery.of(context).size.width >= 1300 //Responsive
            ? Image.asset(
                'images/illustration-1.png',
                width: 300,
              )
            : SizedBox(),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 6),
          child: Container(
            width: 320,

            //Here we have called the login form function
            child: LoginForm(
              context: context,
            ),
          ),
        )
      ],
    );
  }
}
