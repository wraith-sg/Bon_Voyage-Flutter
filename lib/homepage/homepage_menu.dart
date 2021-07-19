import 'package:flutter/material.dart';

import 'resources/app_assets.dart';
import 'resources/app_colors.dart';
class HomepageMenu extends StatelessWidget {
  const HomepageMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// LOGO
          _logoWidget(),

          /// Navigation Menu
          _menuWidget(),

          /// Button
          _btnWidget(context),
        ],
      ),
    );
  }

  Widget _logoWidget() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          AppAssets.logo,
          height: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Bon Voyage!",
          style: TextStyle(fontFamily: 'OpenSans', fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _menuWidget() {
    return Container(
      child: Row(
        children: [
          _menuItemWidget(text: "Home"),
          _menuItemWidget(text: "About"),
          _menuItemWidget(text: "Blog"),
          _menuItemWidget(text: "Contact us"),
        ],
      ),
    );
  }

  _menuItemWidget({required String text}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: TextStyle(fontSize: 24, fontFamily: 'OpenSans'),
      ),
    );
  }

  Widget _btnWidget(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(
          "Sign Out",
          style: TextStyle(fontSize: 18, fontFamily: 'OpenSans'),
        ),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        textColor: AppColors.white,
        color: AppColors.btnColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

}
