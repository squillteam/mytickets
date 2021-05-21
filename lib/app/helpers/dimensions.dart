/// External package
import 'package:flutter/material.dart';

/// Dimensions
class Dimensions {

  /// Screen width
  static double screenWidth = 0;
  /// Screen height
  static double screenHeight = 0;

  /// Configure the width and height of the screen
  static config(BuildContext context) {
    if(screenWidth == 0) screenWidth = MediaQuery.of(context).size.width;
    if(screenHeight == 0) screenHeight = MediaQuery.of(context).size.height;
  }

}