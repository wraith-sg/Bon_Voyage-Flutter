import 'package:flutter/material.dart';
import 'package:bonvoyage/utilities/navbar/routes/routes.dart';

class Menu extends StatelessWidget {
  String? get routeName => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _menuItem(title: 'Home', routeName: routeLoginPage),
              _menuItem(title: 'About us', routeName: routeLoginPage),
              _menuItem(title: 'Contact us', routeName: routeLoginPage),
              _menuItem(title: 'Help', routeName: routeLoginPage),
            ],
          ),
          Row(
            children: [
              _menuItem(title: 'Sign In', isActive: false, routeName: routeLoginPage),
              _menuItem(title: 'Register', isActive: true, routeName: routeRegistrationPage),
            ],
          ),
        ],
      ),
    );
  }

  Widget _menuItem({String title = 'Title Menu', isActive = false, required String routeName}) {
    return GestureDetector(
        onTap: () {
      navKey.currentState!.pushNamed(routeName);
    },
    child: Padding(
      padding: const EdgeInsets.only(right: 75),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.deepPurple : Colors.grey,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            isActive
                ? Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            )
                : SizedBox()
          ],
        ),
      ),
    ),);
  }
}