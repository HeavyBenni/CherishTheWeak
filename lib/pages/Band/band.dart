import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';

class Band extends StatelessWidget {
  const Band({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      color: AppTheme.blackColor,
      child: Column(children: [
        Text(
          ' - About - ',
          style: AppTheme.text3,
        )
      ]),
    );
  }
}
