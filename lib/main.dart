import 'package:bonvoyage/utilities/navbar/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'authentication/login/login_page.dart';
import 'package:bonvoyage/utilities/navbar/routes/generator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: routeLoginPage,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      title: 'Bon Voyage!',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
