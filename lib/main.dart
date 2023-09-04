import 'package:cherishtheweak/pages/Home/home.dart';
import 'package:cherishtheweak/theme/theme.dart';
import 'package:cherishtheweak/widget/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  initState() {
    super.initState();
    RouterFluro.initRoutes();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CTW Demo',
      theme: AppTheme.mainTheme,
      //home: const MainHome(),
      initialRoute: "/",
      onGenerateRoute: RouterFluro.fluroRouter.generator,
    );
  }
}
