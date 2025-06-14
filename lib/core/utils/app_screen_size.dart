import 'package:flutter/material.dart';

class AppScreenSize {
  static const double desktop = 1200;
  static const double tablet = 800;

  static bool isTablet(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.width;
    return shortestSide >= tablet && shortestSide < desktop;
  }

  static bool isDesktop(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.width;
    return shortestSide >= desktop;
  }

  static bool isMobile(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.width;
    return shortestSide < tablet;
  }
}
