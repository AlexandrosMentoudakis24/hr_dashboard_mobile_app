import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Text(
          "Forgot Password?",
          textScaler: const TextScaler.linear(1.1),
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
