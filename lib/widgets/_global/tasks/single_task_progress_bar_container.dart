import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/models/tasks/sub_task.dart';

Container _defaultContainerFormat({
  required Color bgColor,
  required double maxWidth,
}) {
  return Container(
    width: maxWidth,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(90),
    ),
  );
}

class SingleTaskProgressBarContainer extends StatelessWidget {
  const SingleTaskProgressBarContainer({
    required this.subTasks,
    super.key,
  });

  final List<SubTask> subTasks;

  @override
  Widget build(BuildContext context) {
    final totalSubTasks = subTasks.length;
    final totalCompletedSubTasks =
        subTasks.where((s) => s.subTaskState == SubTaskStateType.done).length;

    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        final calculatedProgressWidth = totalSubTasks > 0
            ? maxWidth * totalCompletedSubTasks / totalSubTasks
            : maxWidth;

        return SizedBox(
          height: 7,
          width: constraints.maxWidth,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              _defaultContainerFormat(
                bgColor: Colors.grey.withAlpha(
                  150,
                ),
                maxWidth: constraints.maxWidth,
              ),
              _defaultContainerFormat(
                bgColor: Theme.of(context).primaryColor,
                maxWidth: calculatedProgressWidth,
              ),
            ],
          ),
        );
      },
    );
  }
}
