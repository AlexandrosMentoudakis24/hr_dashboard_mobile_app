import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/utils/string_formatting_utils/string_formatting_utils.dart';

enum TaskCategory {
  toDo,
  inProgress,
  done;
}

class SingleTaskCategory extends StatelessWidget {
  const SingleTaskCategory({
    required this.category,
    required this.totalSum,
    required this.icon,
    required this.iconBgColor,
    super.key,
  });

  final TaskCategory category;
  final int totalSum;
  final IconData icon;
  final Color iconBgColor;

  @override
  Widget build(BuildContext context) {
    final formattedValue = StringFormattingUtils.formatEnumValue(
      enumValue: category,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 5,
          children: [
            Container(
              decoration: BoxDecoration(
                color: iconBgColor,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(3),
              child: Icon(
                icon,
                size: 13,
                color: Colors.white,
              ),
            ),
            Text(
              formattedValue,
              textAlign: TextAlign.left,
              textScaler: const TextScaler.linear(1.1),
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Text(
          totalSum.toString(),
          textScaler: const TextScaler.linear(1.1),
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
