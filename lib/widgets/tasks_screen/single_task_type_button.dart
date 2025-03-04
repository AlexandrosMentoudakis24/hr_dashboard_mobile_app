import 'package:flutter/material.dart';

class SingleTaskTypeButton extends StatelessWidget {
  const SingleTaskTypeButton({
    required this.text,
    required this.isActive,
    super.key,
  });

  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        textScaler: const TextScaler.linear(1.1),
        style: TextStyle(
          fontSize: 16,
          color: isActive ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.1,
        ),
      ),
    );
  }
}
