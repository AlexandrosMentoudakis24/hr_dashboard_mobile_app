import 'dart:math';

import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/clock_in_screen/clock_in_container/clock_in_title_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/clock_in_screen/clock_in_container/clock_in_card.dart';
import 'package:hr_dashboard_mobile_app/widgets/clock_in_screen/work_time_container/work_time_container.dart';

const double _clockInTitleTopPadding = 30;
const double _clockInCardTopPadding = 100;
const double _clockInCardTopMargin = 10;

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
        final double followingContainerHeight =
            maxHeight - upperContainerHeight;
        final double filledContainerHeight = upperContainerHeight * 0.7;

        return SizedBox(
          height: maxHeight,
          width: maxWidth,
          child: Column(
            children: [
              SizedBox(
                height: upperContainerHeight,
                width: maxWidth,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      height: filledContainerHeight,
                      width: maxWidth,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(40),
                        ),
                      ),
                    ),
                    Positioned(
                      top: _clockInTitleTopPadding,
                      left: 0,
                      child: Container(
                        height: upperContainerHeight - _clockInTitleTopPadding,
                        width: maxWidth,
                        padding: const EdgeInsets.only(left: 15),
                        child: const ClockInTitleContainer(),
                      ),
                    ),
                    Positioned(
                      top: _clockInCardTopPadding,
                      left: 0,
                      child: Container(
                        height: upperContainerHeight -
                            _clockInCardTopPadding -
                            _clockInCardTopMargin,
                        width: maxWidth,
                        margin: const EdgeInsets.only(
                          top: _clockInCardTopMargin,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const ClockInCard(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: followingContainerHeight,
                width: maxWidth,
                child: const WorkTimeContainer(),
              ),
            ],
          ),
        );
      },
    );
  }
}
