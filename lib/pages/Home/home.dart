import 'package:cherishtheweak/theme/theme.dart';
import 'package:cherishtheweak/widget/navbar/views.dart';
import 'package:flutter/material.dart';
import 'package:cherishtheweak/widget/footer.dart';
import 'package:cherishtheweak/widget/header.dart';
import 'package:cherishtheweak/widget/navbar/navbar.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  double opacity = 0.0; // Initial opacity value

  // DataKeys for Scroll Function on Click
  final homeKey = GlobalKey();
  final tourKey = GlobalKey();
  final bandKey = GlobalKey();
  final mediaKey = GlobalKey();
  final musicKey = GlobalKey();
  final storeKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    // Start the fade-in animation when the widget is first built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        opacity = 1.0; // Set opacity to 1 for a full fade-in effect
      });
    });
  }

  Function tourbtn() {
    return () {
      Scrollable.ensureVisible(tourKey.currentContext!);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Card(key: homeKey, child: const Header()),
                // Tour
                Card(
                  key: tourKey,
                  child: Container(
                    height: 500,
                    width: 500,
                    color: AppTheme.color6,
                  ),
                ),
                // Band
                Card(),
                // Media
                Card(),
                // Music
                Card(),
                // Store
                Card(),

                const Footer(),

                // ... other content
              ],
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: NavBar(
                logoName: 'Cherish The Weak',
                tourbtn: null,
              )), // Your custom navbar
        ],
      ),
    );
  }
}
