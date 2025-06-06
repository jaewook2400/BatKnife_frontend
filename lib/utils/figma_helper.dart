import 'package:flutter/material.dart';

class FigmaHelper {
  static const double baseHeight = 800;
  static const double baseWidth = 360;

  static double fromFigmaHeight(BuildContext context, double figmaY) {
    final mediaQuery = MediaQuery.of(context);
    final safeHeight = mediaQuery.size.height - mediaQuery.padding.top - mediaQuery.padding.bottom;
    final ratio = figmaY / baseHeight;
    return safeHeight * ratio;
  }

  static double fromFigmaWidth(BuildContext context, double figmaX) {
    final screenWidth = MediaQuery.of(context).size.width;
    final ratio = figmaX / baseWidth;
    return screenWidth * ratio;
  }
}