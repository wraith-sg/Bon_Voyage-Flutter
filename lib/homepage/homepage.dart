import 'dart:ui';

import 'package:bonvoyage/homepage/homepage_body.dart';
import 'package:bonvoyage/homepage/homepage_menu.dart';
import 'package:flutter/material.dart';
import 'package:bonvoyage/homepage/resources/app_assets.dart';
import 'package:bonvoyage/homepage/resources/app_colors.dart';
import 'package:bonvoyage/homepage/resources/app_string.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              AppAssets.bg,
              fit: BoxFit.cover,
            ).image,
          ),
        ),
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            boxShadow: <BoxShadow>[
              new BoxShadow(
                color: Colors.white24,
                blurRadius: 5.0,
                offset: new Offset(5.0, 5.0),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: -100,
                right: 120,
                child: Image.asset(AppAssets.headphone),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Header part
                  HomepageMenu(),
                  /// body part
                  Flexible(child: HomepageBody()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }



}