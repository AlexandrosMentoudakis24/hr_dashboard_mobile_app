import 'package:flutter/material.dart';

class BorderedCardContainer extends StatelessWidget {
  const BorderedCardContainer({
    required this.maxHeight,
    required this.maxWidth,
    required this.childWidget,
    required this.borderWidth,
    super.key,
  });

  final double maxHeight;
  final double maxWidth;
  final Widget childWidget;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: maxHeight,
      width: maxWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: borderWidth,
          color: Colors.black,
        ),
      ),
      child: childWidget,
    );
  }
}
