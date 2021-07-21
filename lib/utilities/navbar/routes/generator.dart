import 'package:bonvoyage/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:bonvoyage/utilities/navbar/routes/routes.dart';
import 'package:bonvoyage/authentication/login/login_page.dart';
import 'package:bonvoyage/authentication/registration/register_page.dart';

class RouteGenerator {
  static Route<dynamic> ?generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeLoginPage:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case routeRegistrationPage:
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case routeHomePage:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}