import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/empty_screen_content/custom_displayed_container_icon_widgets/empty_meetings_container_icon.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/empty_screen_content/empty_screen_content_container.dart';
import 'package:hr_dashboard_mobile_app/models/empty_content/empty_content_item.dart';

Widget emptyMeetingsContainerContent = const EmptyScreenContentContainer(
  emptyContentItem: EmptyContentItem(
    containerTitle: "Today's Mettings",
    containerSubTitle: "Your schedule for today",
    emptyIconWidget: EmptyMeetingsContainerIcon(),
    messageTitle: "No Meeting Available",
    message:
        "It looks like you don't have any meetings scheduled at the moment. This space will be updated as new meetings are added!",
  ),
);

class TodaysMeetingsContainer extends StatelessWidget {
  const TodaysMeetingsContainer({
    required this.hasMeeting,
    super.key,
  });

  final bool hasMeeting;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: hasMeeting ? Text("Meetings") : emptyMeetingsContainerContent,
        );
      },
    );
  }
}
