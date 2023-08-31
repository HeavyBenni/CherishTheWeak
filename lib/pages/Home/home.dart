import 'package:cherishtheweak/pages/Tour/tour.dart';
import 'package:cherishtheweak/widget/footer.dart';
import 'package:cherishtheweak/widget/header.dart';
import 'package:cherishtheweak/widget/navbar.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(title: 'Home Page'),
      body:  Stack(
        children: [
          // Background Container (Full Screen)
          Container(
            color: Colors.blue, // Same as Scaffold's background color
          ),
          // Content Widgets
          const SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Header(),
                  Tour(),
                  Footer()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
