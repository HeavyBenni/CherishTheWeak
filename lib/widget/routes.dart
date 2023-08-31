import 'package:cherishtheweak/pages/Band/band.dart';
import 'package:cherishtheweak/pages/Home/home.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class RouterFluro {
  static FluroRouter fluroRouter = FluroRouter();

  static var homeHandler = Handler(
      handlerFunc: ((BuildContext? context, Map<String, dynamic> params) {
    return const MainHome();
  }));

  static var bandHandler = Handler(
      handlerFunc: ((BuildContext? context, Map<String, dynamic> params) {
    return const Band();
  }));

  static initRoutes() {
    fluroRouter.define("/", handler: homeHandler, transitionType: TransitionType.fadeIn);
    fluroRouter.define("band", handler: bandHandler, transitionType: TransitionType.fadeIn);
  }
}
