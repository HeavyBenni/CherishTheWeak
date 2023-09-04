import 'package:cherishtheweak/pages/Home/home.dart';
import 'package:cherishtheweak/theme/theme.dart';
import 'package:cherishtheweak/widget/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
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
      title: 'Flutter Demo',
      theme: AppTheme.mainTheme,
      //home: const MainHome(),
      initialRoute: "/",
      onGenerateRoute: RouterFluro.fluroRouter.generator,
    );
  }
}