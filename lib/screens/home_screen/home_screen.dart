import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/home_screen/todays_meetings_container/todays_meetings_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/todays_tasks_container/todays_tasks_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/user_infos_container/user_infos_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/filled_summary_card/filled_summary_card.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:hr_dashboard_mobile_app/utils/screen_size_utils/screen_size_utils.dart';

const EdgeInsets _parentContainerPadding = EdgeInsets.only(
  top: kToolbarHeight,
);
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
    final mediaQuerySizes = MediaQuery.sizeOf(context);

    final screenSizes = ScreenSizeUtils.getAvailableScreenSize(
      ctx: context,
      calcAppBarHeight: true,
      calcBottomNavBarHeight: true,
    );

    return Scaffold(
      body: Container(
        height: mediaQuerySizes.height,
        width: mediaQuerySizes.width,
        padding: _parentContainerPadding,
        child: Column(
          children: [
            Container(
              height: screenSizes.height,
              width: screenSizes.width,
              padding: _innerContainerPadding,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: _userInfosContainerHeight,
                      width:
                          screenSizes.width - _innerContainerPadding.horizontal,
                      child: const UserInfosContainer(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SizedBox(
                        height: _filledSummaryCardHeight,
                        width: screenSizes.width -
                            _innerContainerPadding.horizontal,
                        child: const FilledSummaryCard(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SizedBox(
                        height: 260,
                        width: screenSizes.width -
                            _parentContainerPadding.horizontal,
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
                        width: screenSizes.width -
                            _parentContainerPadding.horizontal,
                        child: const TodaysTasksContainer(
                          hasTask: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
