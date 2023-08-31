import 'package:cherishtheweak/pages/Media/media.dart';
import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      color: AppTheme.color2,
    );
  }
}