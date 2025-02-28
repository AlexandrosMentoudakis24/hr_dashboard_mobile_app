import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.btnText,
    super.key,
  });

  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(90),
      ),
      child: Text(
        btnText,
        textScaler: const TextScaler.linear(1.1),
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
