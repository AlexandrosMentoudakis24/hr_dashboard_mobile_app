import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/bottom_nav_bar/bottom_nav_bar.dart';

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
        (calcBottomNavBarHeight ? kBottomNavBarHeight : 0.0);

    return ScreenSizes(height: height, width: screenSize.width);
  }
}
