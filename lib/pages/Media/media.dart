import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';

class Media extends StatelessWidget {
  const Media({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      color: AppTheme.blackColor,
      child: Column(children: [
        Text(
          ' - Media - ',
          style: AppTheme.text3,
        )
      ]),
    );
  }
}
