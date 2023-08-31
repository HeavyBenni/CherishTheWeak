import 'package:flutter/material.dart';
import 'package:cherishtheweak/theme/theme.dart';
import 'package:cherishtheweak/widget/navbar/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  double opacity = 0.0; // Initial opacity value

  @override
  void initState() {
    super.initState();
    // Start the fade-in animation when the widget is first built
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        opacity = 1.0; // Set opacity to 1 for a full fade-in effect
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(seconds: 2),
      opacity: opacity,
      child: Scaffold(
        appBar: NavBar(logoName: 'Cherish The Weak'),
        body: Center(
          // Wrap the Text widget with AnimatedOpacity
          child: Text('CTW GANG', style: AppTheme.headLineLarge),
        ),
      ),
    );
  }
}
