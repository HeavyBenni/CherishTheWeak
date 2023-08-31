import 'package:flutter/material.dart';
import 'package:cherishtheweak/theme/theme.dart';
import 'package:cherishtheweak/widget/navbar/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(logoName: 'Cherish The Weak'),
      body: Center(
        child: Text(
          'CTW GANG',
          style: GoogleFonts.getFont(
            'Metal Mania', // Replace with the name of your selected Google Font
            textStyle: AppTheme.headLineLarge,
          ),
        ),
      ),
    );
  }
}
