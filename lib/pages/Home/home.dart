import 'package:cherishtheweak/widget/navbar/navbar.dart';
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
    return const Scaffold(
      appBar: NavBar(logoName: 'Cherish The Weak'),
      body:  Center(
        child: Text('CTW GANG'),
      ),
    );
  }
}
