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

 @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return const Scaffold(
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                Footer(),
                // ... other content
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: NavBar(logoName: 'Cherish The Weak')), // Your custom navbar
        ],
      ),
=======
    return Scaffold(
      appBar: NavBar(logoName: 'Cherish The Weak'),
      body: Center(
        child: Text(
          'CTW GANG',
          ),
        ),
>>>>>>> Stashed changes
    );
  }
}


