import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/empty_screen_content/empty_screen_content_container.dart';
import 'package:hr_dashboard_mobile_app/models/empty_content/empty_content_item.dart';

Widget _emptyStateWidget = EmptyScreenContentContainer(
  emptyContentItem: EmptyContentItem(
    containerTitle: "Submitted Leave Requests",
    containerSubTitle: "Current Active Leave Requests",
    emptyIconWidget: Expanded(
      child: Image.asset(
        "assets/images/empty_leave_work_requests_image.png",
      ),
    ),
    messageTitle: "No Submitted Leave Requests",
    message:
        "Ready to catch some fresh air? Click 'Submit Leave' and take that well-deserved break!",
  ),
);

class SubmittedLeaveWorkRequestsContainer extends StatelessWidget {
  const SubmittedLeaveWorkRequestsContainer({
    required this.hasItems,
    super.key,
  });

  final bool hasItems;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: hasItems
              ? const Text(
                  "Leave Requests",
                )
              : _emptyStateWidget,
        );
      },
    );
  }
}
