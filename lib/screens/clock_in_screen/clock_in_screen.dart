import 'dart:math';

import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/overflowed_container_with_card/overflowed_container_with_card.dart';
import 'package:hr_dashboard_mobile_app/widgets/clock_in_screen/work_time_container/work_time_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/clock_in_screen/clock_in_container/clock_in_card.dart';

class ClockInScreen extends StatefulWidget {
  const ClockInScreen({super.key});

  @override
  State<ClockInScreen> createState() => _ClockInScreenState();
}

class _ClockInScreenState extends State<ClockInScreen> {
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
                titleText: "Let's Clock In",
                subTitleText: "Don't miss you clock in schedule",
                titleImage: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Image.asset(
                    "assets/images/clock_with_stars_image.png",
                  ),
                ),
                cardWidget: const ClockInCard(),
              ),
              Container(
                height: followingContainerHeight,
                width: maxWidth,
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: const WorkTimeContainer(
                  hasWorkTime: false,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
