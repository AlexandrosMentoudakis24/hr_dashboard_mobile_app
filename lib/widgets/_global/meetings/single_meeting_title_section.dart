import 'package:flutter/material.dart';

class SingleMeetingTitleSection extends StatelessWidget {
  const SingleMeetingTitleSection({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: constraints.maxWidth * 0.6,
            child: Row(
              spacing: 5,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.video_camera_front_rounded,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                Text(
                  title,
                  textAlign: TextAlign.left,
                  textScaler: const TextScaler.linear(1.1),
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: constraints.maxWidth * 0.4,
            child: Row(
              spacing: 5,
              children: [
                const Icon(
                  Icons.access_time_outlined,
                  color: Colors.black,
                  size: 14,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.4 * 0.85,
                  child: const FittedBox(
                    child: Text(
                      "01:30 AM - 02:00 AM",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
