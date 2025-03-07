import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/models/meetings/meeting.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/meetings/single_meeting_sub_title_section.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/meetings/single_meeting_title_section.dart';

class SingleMeetingContainer extends StatelessWidget {
  const SingleMeetingContainer({
    required this.meeting,
    super.key,
  });

  final Meeting meeting;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          spacing: 10,
          children: [
            Expanded(
              child: SingleMeetingTitleSection(
                title: meeting.title,
              ),
            ),
            Expanded(
              child: SingleMeetingSubTitleSection(
                activerUsers: meeting.currentActiveUsers,
                meetingId: meeting.id,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
