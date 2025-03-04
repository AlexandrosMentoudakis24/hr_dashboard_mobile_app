import 'package:flutter/material.dart';

Widget _titleTextWidget(String text) {
  return Text(
    text,
    textAlign: TextAlign.left,
    overflow: TextOverflow.clip,
    textScaler: const TextScaler.linear(1.1),
    style: const TextStyle(
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.w800,
    ),
  );
}

Widget _subTitleText(String text) {
  return Text(
    text,
    textAlign: TextAlign.left,
    overflow: TextOverflow.clip,
    textScaler: const TextScaler.linear(1.1),
    style: const TextStyle(
      fontSize: 13,
      color: Colors.white,
    ),
  );
}

class OverflowedContainerTitleWidget extends StatelessWidget {
  const OverflowedContainerTitleWidget({
    required this.titleText,
    required this.subTitleText,
    required this.image,
    super.key,
  });

  final String titleText;
  final String subTitleText;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        width: constraints.maxWidth,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: constraints.maxWidth * 0.6,
                  child: _titleTextWidget(titleText),
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.6,
                  child: _subTitleText(subTitleText),
                ),
              ],
            ),
            image,
          ],
        ),
      ),
    );
  }
}
