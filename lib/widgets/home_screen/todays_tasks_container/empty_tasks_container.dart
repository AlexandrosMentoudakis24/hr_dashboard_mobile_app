import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/models/empty_content/empty_content_item.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/empty_screen_content/empty_screen_content_container.dart';

Widget emptyTasksContainerContent = EmptyScreenContentContainer(
  emptyContentItem: EmptyContentItem(
    containerTitle: "Today's Tasks",
    containerSubTitle: "The tasks assigned to you for today",
    emptyIconWidget: Expanded(
      child: Image.asset(
        "assets/images/empty_tasks_image.png",
      ),
    ),
    messageTitle: "No Tasks Assigned",
    message:
        "It looks like you don't have any Tasks assigned to you right now. Don't worry, the space will be updated as new Tasks become available!",
  ),
);
