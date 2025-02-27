import 'package:flutter/material.dart';

class ScreenSizes {
  ScreenSizes({
    required this.height,
    required this.width,
  });

  final double height;
  final double width;
}

class ScreenSizeUtils {
  ScreenSizeUtils();

  static ScreenSizes getAvailableScreenSize({
    required BuildContext ctx,
    required bool calcAppBarHeight,
    required bool calcBottomNavBarHeight,
  }) {
    final screenSize = MediaQuery.sizeOf(ctx);

    final height = screenSize.height -
        (calcAppBarHeight ? kToolbarHeight : 0.0) -
        (calcBottomNavBarHeight ? kBottomNavigationBarHeight : 0.0);

    return ScreenSizes(height: height, width: screenSize.width);
  }
}
