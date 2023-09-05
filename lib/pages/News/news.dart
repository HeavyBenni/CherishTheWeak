import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Column(children: [
        Text(
          ' - News - ',
          style: AppTheme.text3,
        )
      ]),
    );
  }
}
