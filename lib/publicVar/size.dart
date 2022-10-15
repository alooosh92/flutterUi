import 'package:flutter/cupertino.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? defultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
    defultSize = orientation == Orientation.landscape
        ? screenHeight! * 0.24
        : screenWidth! * 0.24;
  }
}
