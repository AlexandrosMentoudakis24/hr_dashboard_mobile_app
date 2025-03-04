import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/empty_screen_content/custom_displayed_container_icon_widgets/empty_tasks_container_icon.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/empty_screen_content/empty_screen_content_container.dart';
import 'package:hr_dashboard_mobile_app/models/empty_content/empty_content_item.dart';

Widget emptyTasksContainerContent = const EmptyScreenContentContainer(
  emptyContentItem: EmptyContentItem(
    containerTitle: "Today's Tasks",
    containerSubTitle: "The tasks assigned to you for today",
    emptyIconWidget: EmptyTasksContainerIcon(),
    messageTitle: "No Tasks Assigned",
    message:
        "It looks like you don't have any Tasks assigned to you right now. Don't worry, the space will be updated as new Tasks become available!",
  ),
);

class TodaysTasksContainer extends StatelessWidget {
  const TodaysTasksContainer({
    required this.hasTask,
    super.key,
  });

  final bool hasTask;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: hasTask ? Text("Tasks") : emptyTasksContainerContent,
        );
      },
    );
  }
}
