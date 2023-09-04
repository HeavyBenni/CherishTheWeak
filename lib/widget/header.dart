import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5000,
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(0, 197, 51, 51),
    );
  }
}
