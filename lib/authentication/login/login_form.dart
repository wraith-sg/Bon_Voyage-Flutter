import 'package:bonvoyage/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginForm extends StatefulWidget {
  BuildContext prevcontext;
  LoginForm({Key? key, required BuildContext context})
      : prevcontext = context,
        super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;
    final TextEditingController _emailcontroller = TextEditingController();
    final TextEditingController _passwordcontroller = TextEditingController();

    //login method
    login(BuildContext context) async {
      try {
        final UserCredential cred = await _auth.signInWithEmailAndPassword(
            email: _emailcontroller.text, password: _passwordcontroller.text);
        //User? use = cred.user;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      } catch (e) {
        print(e.toString());
        print('Wrong Email ID or Password');
      }
    }

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF6F35A5),
              width: 2,
            ),
            color: Color(0xFFF1E6FF),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextFormField(
            controller: _emailcontroller,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Color(0xFF6F35A5),
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
            ),
            cursorColor: Color(0xFF6F35A5),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '*';
              }
              return null;
            },
            decoration: InputDecoration(
              errorStyle: TextStyle(height: 0),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 12.5),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xFF6F35A5),
              ),
              hintText: 'Enter your Email Address',
              hintStyle: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                letterSpacing: 0.5,
              ),
              labelStyle: TextStyle(fontSize: 12),
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF6F35A5),
              width: 2,
            ),
            color: Color(0xFFF1E6FF),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextFormField(
            controller: _passwordcontroller,
            obscureText: true,
            style: TextStyle(
              color: Color(0xFF6F35A5),
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
            ),
            cursorColor: Color(0xFF6F35A5),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '*';
              }
              return null;
            },
            decoration: InputDecoration(
              errorStyle: TextStyle(height: 0),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 12.5),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFF6F35A5),
              ),
              hintText: 'Enter your Password',
              hintStyle: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                letterSpacing: 0.5,
              ),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: Colors.grey,
              ),
              labelStyle: TextStyle(fontSize: 12),
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: ElevatedButton(
            child: Container(
                width: double.infinity,
                height: 60,
                child: Center(child: Text("Sign In"))),
            onPressed: () async {
              login(widget.prevcontext);
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF6F35A5),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        SizedBox(height: 40),
        Row(children: [
          Expanded(
            child: Divider(
              color: Colors.grey[300],
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Or continue with"),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey[400],
              height: 50,
            ),
          ),
        ]),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _loginWithButton(image: 'images/google.png'),
          ],
        ),
      ],
    );
  }
}

Widget _loginWithButton({required String image, bool isActive = false}) {
  return Container(
    width: 90,
    height: 70,
    decoration: isActive
        ? BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 10,
                blurRadius: 30,
              )
            ],
            borderRadius: BorderRadius.circular(15),
          )
        : BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black12),
          ),
    child: Center(
        child: Container(
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            )
          : BoxDecoration(),
      child: Image.asset(
        '$image',
        width: 35,
      ),
    )),
  );
}
