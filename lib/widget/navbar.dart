import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  NavBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Home'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Home'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Home'),
              )
            ],
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 32,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Home'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Home'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Home'),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
