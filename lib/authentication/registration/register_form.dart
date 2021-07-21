import 'package:bonvoyage/authentication/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterForm extends StatelessWidget {
  BuildContext prevcontext;
  RegisterForm({Key? key,required BuildContext context}) : prevcontext=context,super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _key = GlobalKey<FormState>();
    String mail = '';
    String pass = '';
    FirebaseAuth _auth = FirebaseAuth.instance;
    final TextEditingController _emailcontroller = TextEditingController();
    final TextEditingController _passwordcontroller = TextEditingController();
    final TextEditingController _phonecontroller = TextEditingController();
    final TextEditingController _namecontroller = TextEditingController();

    Future<User?> registerUser() async {
      UserCredential uerCred = await _auth.createUserWithEmailAndPassword(
          email: _emailcontroller.text, password: _passwordcontroller.text);
      User? user = uerCred.user;

      return user;
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
            controller: _namecontroller,
            keyboardType: TextInputType.name,
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
              hintText: 'Enter your Name',
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
            controller: _phonecontroller,
            keyboardType: TextInputType.phone,
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
              hintText: 'Enter your Phone Number',
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
                child: Center(child: Text("Register"))),
            onPressed: () async {
              if (_key.currentState!.validate()) {
                registerUser();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              }
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
      ],
    );
  }
}