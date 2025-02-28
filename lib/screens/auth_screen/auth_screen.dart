import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/auth_screen/change_auth_state_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/auth_screen/split_options_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/secondary_button_with_icon.dart';
import 'package:hr_dashboard_mobile_app/utils/screen_size_utils/screen_size_utils.dart';
import 'package:hr_dashboard_mobile_app/widgets/auth_screen/login_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSizes = ScreenSizeUtils.getAvailableScreenSize(
      ctx: context,
      calcAppBarHeight: false,
      calcBottomNavBarHeight: false,
    );

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        body: Container(
          height: screenSizes.height,
          width: screenSizes.width,
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(25, 35, 25, 0),
          margin: EdgeInsets.only(
            bottom: MediaQuery.viewInsetsOf(context).bottom * 0.05,
          ),
          child: SingleChildScrollView(
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
                LoginForm(
                  maxWidth: screenSizes.width,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: SizedBox(
                    width: screenSizes.width,
                    child: const SplitOptionsContainer(),
                  ),
                ),
                SizedBox(
                  width: screenSizes.width,
                  child: const SecondaryButtonWithIcon(
                    icon: Icons.person,
                    btnText: "Sign In With Employee ID",
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
                SizedBox(
                  width: screenSizes.width,
                  child: const ChangeAuthStateContainer(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
