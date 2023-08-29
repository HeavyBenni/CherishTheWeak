import 'package:flutter/material.dart';


class NavBar extends StatefulWidget {

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Add your home navigation logic here
          },
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Add your search navigation logic here
          },
        ),
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            // Add your profile navigation logic here
          },
        ),
      ],
    );
  }
}