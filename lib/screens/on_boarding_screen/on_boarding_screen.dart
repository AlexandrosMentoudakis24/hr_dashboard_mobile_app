import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/primary_button.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/secondary_button.dart';

import 'package:hr_dashboard_mobile_app/widgets/on_boarding_screen/indexing_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/on_boarding_screen/message_container.dart';
import 'package:hr_dashboard_mobile_app/utils/screen_size_utils/screen_size_utils.dart';
import 'package:hr_dashboard_mobile_app/screens/auth_screen/auth_screen.dart';

class ScreenMessageContent {
  ScreenMessageContent({
    required this.title,
    required this.message,
  });

  final String title;
  final String message;
}

List<ScreenMessageContent> _screenMessagesContents = [
  ScreenMessageContent(
    title: "Welcome to WorkMate!",
    message:
        "Make Smart Decisions! \nSet clear timelines for projects and celebrate your achievements!",
  ),
  ScreenMessageContent(
    title: "Manage Stress Effectively",
    message:
        "Stay Balanced! \nTrack your workload and maintain a healthy strees level with ease!",
  ),
  ScreenMessageContent(
    title: "Plan for success",
    message:
        "Your journey starts Here! \nEarn achievement badges as you conquer your tasks. Let's get started!",
  ),
  ScreenMessageContent(
    title: "Navigate Your Work Journey Efficient & Easy",
    message: "Increase your work management & career development radically!",
  ),
];

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var _currentStep = 0;
  var _activeMessageContent = _screenMessagesContents[0];
  var _isLastStep = false;

  void goToNextStep() {
    if (_isLastStep) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const AuthScreen(),
        ),
      );

      return;
    }

    setState(() {
      if (_currentStep + 1 >= _screenMessagesContents.length - 1) {
        _isLastStep = true;
      }

      _currentStep++;
      _activeMessageContent = _screenMessagesContents[_currentStep];
    });
  }

  void goToPrevStep() {
    if (_currentStep - 1 < 0) {
      return;
    }

    setState(() {
      _currentStep--;
      _activeMessageContent = _screenMessagesContents[_currentStep];
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSizes = ScreenSizeUtils.getAvailableScreenSize(
      ctx: context,
      calcAppBarHeight: false,
      calcBottomNavBarHeight: false,
    );

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: screenSizes.height * 0.45),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        height: screenSizes.height * 0.55,
        width: screenSizes.width,
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MessageContainer(
              title: _activeMessageContent.title,
              message: _activeMessageContent.message,
            ),
            if (!_isLastStep)
              Container(
                height: 10,
                width: screenSizes.width,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 30),
                child: IndexingContainer(
                  totalSteps: _screenMessagesContents.length,
                  currentStep: _currentStep,
                ),
              ),
            const Spacer(),
            GestureDetector(
              onTap: goToNextStep,
              child: PrimaryButton(
                btnText: _isLastStep ? "Sign In" : "Next",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: GestureDetector(
                onTap: goToPrevStep,
                child: SecondaryButton(
                  btnText: _isLastStep ? "Sign Up" : "Skip",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
