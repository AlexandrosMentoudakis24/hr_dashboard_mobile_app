import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/utils/screen_size_utils/screen_size_utils.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/primary_button.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/secondary_button_with_icon.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSizes = ScreenSizeUtils.getAvailableScreenSize(
      ctx: context,
      calcAppBarHeight: false,
      calcBottomNavBarHeight: false,
    );

    return Scaffold(
      body: Container(
        height: screenSizes.height,
        width: screenSizes.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign In",
              textScaler: TextScaler.linear(1.1),
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              "Sign In to my account",
              textScaler: TextScaler.linear(1.1),
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: screenSizes.width,
              child: const PrimaryButton(
                btnText: "Sign In",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: SizedBox(
                width: screenSizes.width,
                child: const SecondaryButtonWithIcon(
                  icon: Icons.person,
                  btnText: "Sign In With Employee ID",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: SizedBox(
                width: screenSizes.width,
                child: const SecondaryButtonWithIcon(
                  icon: Icons.phone_rounded,
                  btnText: "Sign In With Phone",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
