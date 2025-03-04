import 'package:flutter/material.dart';

const _titleText = Text(
  "Let's Clock-In!",
  textAlign: TextAlign.left,
  overflow: TextOverflow.clip,
  textScaler: TextScaler.linear(1.1),
  style: TextStyle(
    fontSize: 25,
    color: Colors.white,
    fontWeight: FontWeight.w800,
  ),
);
const _subTitleText = Text(
  "Don't miss your clock in schedule",
  textAlign: TextAlign.left,
  overflow: TextOverflow.clip,
  textScaler: TextScaler.linear(1.1),
  style: TextStyle(
    fontSize: 13,
    color: Colors.white,
  ),
);

class ClockInTitleContainer extends StatelessWidget {
  const ClockInTitleContainer({super.key});

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
                  child: _titleText,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.6,
                  child: _subTitleText,
                ),
              ],
            ),
            Image.asset(
              "assets/images/clock_with_stars_image.png",
            ),
          ],
        ),
      ),
    );
  }
}
