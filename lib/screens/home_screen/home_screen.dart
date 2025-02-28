import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/utils/screen_size_utils/screen_size_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSizes = ScreenSizeUtils.getAvailableScreenSize(
      ctx: context,
      calcAppBarHeight: true,
      calcBottomNavBarHeight: true,
    );

    return Scaffold(
      body: Container(
        height: screenSizes.height,
        width: screenSizes.width,
        padding: const EdgeInsets.fromLTRB(30, kToolbarHeight, 30, 0),
        margin: const EdgeInsets.only(
          bottom: kBottomNavigationBarHeight,
        ),
        color: Colors.red,
        child: Column(
          children: [
            Text(
              "Hello",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
