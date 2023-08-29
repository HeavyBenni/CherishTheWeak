import 'package:cherishtheweak/widget/navbar.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [NavBar()],
      ),
      body:  Center(
        child: Text('CTW GANG',
        style: Theme.of(context).textTheme.bodyLarge,),
      ),
    );
  }
}
