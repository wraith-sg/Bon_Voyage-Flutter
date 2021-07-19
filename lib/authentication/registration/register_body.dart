import 'package:bonvoyage/authentication/login/login_page.dart';
import 'package:bonvoyage/authentication/registration/register_form.dart';
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
                'Register to \nBon Voyage!',
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
                    "If you already have an account you can",
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        child: Text(
                          " Sign In Here!",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Color(0xFF6F35A5),
                              fontWeight: FontWeight.bold),
                        ),
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
            child: RegisterForm(context: context,),

          ),
        )
      ],
    );
  }

}