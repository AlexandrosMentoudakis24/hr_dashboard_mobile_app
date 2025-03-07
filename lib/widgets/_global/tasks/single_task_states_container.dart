import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/models/tasks/task.dart';
import 'package:hr_dashboard_mobile_app/utils/string_formatting_utils/string_formatting_utils.dart';

Text _defaultTextFormat({
  required String text,
  required Color textColor,
  required double fontSize,
  required FontWeight fontWeight,
}) {
  return Text(
    text,
    textAlign: TextAlign.left,
    textScaler: const TextScaler.linear(1.1),
    style: TextStyle(
      fontSize: fontSize,
      color: textColor,
      fontWeight: fontWeight,
    ),
  );
}

class SingleTaskStatesContainer extends StatelessWidget {
  const SingleTaskStatesContainer({
    required this.taskState,
    required this.taskPriority,
    super.key,
  });

  final TaskStateType taskState;
  final TaskPriorityType taskPriority;

  (IconData, Color) _formatStateWidget() {
    switch (taskState) {
      case TaskStateType.planning:
        return (Icons.schema_outlined, Colors.blue);
      case TaskStateType.paused:
        return (Icons.pause_circle_outline, Colors.teal);
      case TaskStateType.inProgress:
        return (Icons.access_time_filled_rounded, Colors.orange);
      case TaskStateType.done:
        return (Icons.done_all, Colors.green);
    }
  }

  Color _formatBgColor() {
    switch (taskPriority) {
      case TaskPriorityType.low:
        return Colors.green;
      case TaskPriorityType.medium:
        return Colors.orange;
      case TaskPriorityType.high:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    final formattedStateText = StringFormattingUtils.formatEnumValue(
      enumValue: taskState,
    );
    final formattedPriorityText = StringFormattingUtils.formatEnumValue(
      enumValue: taskPriority,
    );

    final Color priorityContainerBgColor = _formatBgColor();
    final (displayedStateTypeIcon, fgColor) = _formatStateWidget();

    return Row(
      spacing: 20,
      children: [
        Row(
          spacing: 7,
          children: [
            Icon(
              displayedStateTypeIcon,
              size: 23,
              color: fgColor,
            ),
            _defaultTextFormat(
              text: formattedStateText,
              fontSize: 17,
              textColor: fgColor,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 2,
          ),
          decoration: BoxDecoration(
            color: priorityContainerBgColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 7,
            children: [
              const Icon(
                Icons.flag_rounded,
                color: Colors.white,
                size: 18,
              ),
              _defaultTextFormat(
                fontSize: 15,
                text: formattedPriorityText,
                textColor: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
