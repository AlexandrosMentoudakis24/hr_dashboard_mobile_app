import 'package:flutter/material.dart';

String formatSingleTimeValue(int value) {
  return value.toString().length >= 2 ? value.toString() : "0$value";
}

class SingleClockInMetrics extends StatelessWidget {
  const SingleClockInMetrics({
    required this.titleText,
    required this.hours,
    required this.minutes,
    super.key,
  });

  final String titleText;
  final int hours;
  final int minutes;

  @override
  Widget build(BuildContext context) {
    final formattedhours = formatSingleTimeValue(hours);
    final formattedMinutes = formatSingleTimeValue(minutes);

    return LayoutBuilder(
      builder: (context, constraints) => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: constraints.maxWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: constraints.maxWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.timer_outlined,
                    size: 18,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: SizedBox(
                      width: constraints.maxWidth * 0.8,
                      child: Text(
                        titleText,
                        textAlign: TextAlign.left,
                        textScaler: const TextScaler.linear(1.1),
                        overflow: TextOverflow.clip,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                "$formattedhours:$formattedMinutes Hrs",
                textAlign: TextAlign.left,
                overflow: TextOverflow.clip,
                textScaler: const TextScaler.linear(1.1),
                style: const TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
