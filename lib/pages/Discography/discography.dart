import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';

class Discography extends StatelessWidget {
  const Discography({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      color: AppTheme.blackColor,
      child: Column(children: [
        Text(
          'DISCOGRAPHY',
          style: AppTheme.text3,
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: 300,
          height: 2,
          color: AppTheme.beigeColor,
        )
      ]),
    );
  }
}
