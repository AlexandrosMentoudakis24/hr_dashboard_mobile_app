import 'dart:math';

import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/overflowed_container_with_card/overflowed_container_with_card.dart';
import 'package:hr_dashboard_mobile_app/widgets/clock_in_screen/clock_in_container/clock_in_card.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/todays_tasks_container/todays_tasks_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/tasks_screen/tasks_type_container.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;

        final double upperContainerHeight = min(350.0, maxHeight * 0.5);
        final double filledContainerHeight = upperContainerHeight * 0.7;
        final double followingContainerHeight =
            maxHeight - upperContainerHeight;

        return SizedBox(
          height: maxHeight,
          width: maxWidth,
          child: Column(
            children: [
              OverflowedContainerWithCard(
                upperContainerHeight: upperContainerHeight,
                filledContainerHeight: filledContainerHeight,
                maxWidth: maxWidth,
                titleText: "Challenges",
                subTitleText: "Let's tackle your To-Do List",
                titleImage: Container(
                  alignment: Alignment.topCenter,
                  height: 73,
                  width: 73,
                  margin: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: Image.asset(
                    "assets/images/tasks_with_stars_image.png",
                  ),
                ),
                cardWidget: const ClockInCard(),
              ),
              SizedBox(
                height: followingContainerHeight,
                width: maxWidth,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 15,
                    children: [
                      Container(
                        height: 45,
                        width: maxWidth,
                        margin: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: const TasksTypeContainer(),
                      ),
                      SizedBox(
                        height: 350,
                        width: maxWidth,
                        child: const TodaysTasksContainer(
                          hasTask: false,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
