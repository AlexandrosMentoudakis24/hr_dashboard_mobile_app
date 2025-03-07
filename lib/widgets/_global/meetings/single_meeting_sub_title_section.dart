import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/active_users_container/active_users_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/meetings/single_meeting_join_button.dart';
import 'package:hr_dashboard_mobile_app/models/users/user.dart';

class SingleMeetingSubTitleSection extends StatelessWidget {
  const SingleMeetingSubTitleSection({
    required this.meetingId,
    required this.activerUsers,
    super.key,
  });

  final int meetingId;
  final List<User> activerUsers;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ActiveUsersContainer(
            users: activerUsers,
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: SingleMeetingJoinButton(
              meetingId: meetingId,
            ),
          ),
        ),
      ],
    );
  }
}
