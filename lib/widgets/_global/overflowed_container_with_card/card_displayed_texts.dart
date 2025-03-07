import 'package:flutter/material.dart';

class CardTitleText extends StatelessWidget {
  const CardTitleText({
    required this.titleText,
    super.key,
  });

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      textAlign: TextAlign.left,
      textScaler: const TextScaler.linear(1.1),
      style: const TextStyle(
        fontSize: 15,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class CardSubTitleText extends StatelessWidget {
  const CardSubTitleText({
    required this.subTitleText,
    super.key,
  });

  final String subTitleText;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitleText,
      textAlign: TextAlign.left,
      textScaler: const TextScaler.linear(1.1),
      style: const TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
    );
  }
}
