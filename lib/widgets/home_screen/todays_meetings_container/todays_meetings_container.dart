import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/home_screen/todays_meetings_container/empty_meetings_content.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/meetings/single_meeting_container.dart';
import 'package:hr_dashboard_mobile_app/models/meetings/meeting.dart';
import 'package:hr_dashboard_mobile_app/models/users/user.dart';

class TodaysMeetingsContainer extends StatefulWidget {
  const TodaysMeetingsContainer({super.key});

  @override
  State<TodaysMeetingsContainer> createState() =>
      _TodaysMeetingsContainerState();
}

class _TodaysMeetingsContainerState extends State<TodaysMeetingsContainer> {
  late List<Meeting> _meetings;

  @override
  void initState() {
    _meetings = [
      Meeting(
        id: 1,
        title: "First Meeting",
        startingDateTime: DateTime.now(),
        endingDateTime: DateTime.now(),
        currentActiveUsers: [
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
        ],
      ),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isEmptyList = _meetings.isEmpty;

    final Widget defaultScreenContent = LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
            width: constraints.maxWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Today's Meetings",
                      textAlign: TextAlign.left,
                      textScaler: TextScaler.linear(1.1),
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "${_meetings.length}",
                      textAlign: TextAlign.left,
                      textScaler: const TextScaler.linear(1.1),
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(0),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _meetings.length,
                  itemBuilder: (context, index) {
                    final meeting = _meetings[index];

                    return Container(
                      height: 110,
                      margin: const EdgeInsets.only(bottom: 10),
                      width: constraints.maxWidth,
                      child: SingleMeetingContainer(
                        meeting: meeting,
                      ),
                    );
                  },
                ),
              ],
            ));
      },
    );

    return isEmptyList ? emptyMeetingsContainerContent : defaultScreenContent;
  }
}
