import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/home_screen/todays_meetings_container/todays_meetings_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/todays_tasks_container/todays_tasks_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/user_infos_container/user_infos_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/filled_summary_card/filled_summary_card.dart';

const EdgeInsets _innerContainerPadding = EdgeInsets.symmetric(
  horizontal: 10,
);
const _userInfosContainerHeight = 80.0;
const _filledSummaryCardHeight = 130.0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;

        return Container(
          height: maxHeight,
          width: maxWidth,
          padding: _innerContainerPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: _userInfosContainerHeight,
                  width: maxWidth,
                  child: const UserInfosContainer(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    height: _filledSummaryCardHeight,
                    width: maxWidth,
                    child: const FilledSummaryCard(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    height: 260,
                    width: maxWidth,
                    child: const TodaysMeetingsContainer(
                      hasMeeting: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: SizedBox(
                    height: 260,
                    width: maxWidth,
                    child: const TodaysTasksContainer(
                      hasTask: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
