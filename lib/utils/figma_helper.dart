import 'package:flutter/material.dart';

class FigmaHelper {
  static const double figmaWidth = 393.0;
  static const double figmaHeight = 852.0;

  static double fromFigmaWidth(BuildContext context, double value) {
    final screenWidth = MediaQuery.of(context).size.width;
    return value * screenWidth / figmaWidth;
  }

  static double fromFigmaHeight(BuildContext context, double value) {
    final screenHeight = MediaQuery.of(context).size.height;
    return value * screenHeight / figmaHeight;
  }
}
