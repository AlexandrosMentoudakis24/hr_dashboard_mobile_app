import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/overflowed_container_with_card/card_displayed_texts.dart';
import 'package:hr_dashboard_mobile_app/widgets/clock_in_screen/clock_in_container/single_clock_in_metrics.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/bordered_card_container/bordered_card_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/primary_button.dart';

const _parentContainerPadding = EdgeInsets.symmetric(
  horizontal: 20,
  vertical: 10,
);
const _parentContainerBorderWidth = 2.0;

class ClockInCard extends StatelessWidget {
  const ClockInCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => BorderedCardContainer(
        maxHeight: constraints.maxHeight,
        maxWidth: constraints.maxWidth,
        borderWidth: _parentContainerBorderWidth,
        childWidget: Container(
          padding: _parentContainerPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width:
                    constraints.maxWidth - _parentContainerPadding.horizontal,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardTitleText(
                      titleText: "Total Working Hour",
                    ),
                    CardSubTitleText(
                      subTitleText: "Paid period 01/07/2024 - 30/07/2024",
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: SizedBox(
                  width:
                      constraints.maxWidth - _parentContainerPadding.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: (constraints.maxWidth -
                                _parentContainerPadding.horizontal -
                                (2 * _parentContainerBorderWidth)) *
                            0.5,
                        child: const SingleClockInMetrics(
                          titleText: "Today",
                          hours: 0,
                          minutes: 0,
                        ),
                      ),
                      SizedBox(
                        width: (constraints.maxWidth -
                                _parentContainerPadding.horizontal -
                                (2 * _parentContainerBorderWidth)) *
                            0.5,
                        child: const SingleClockInMetrics(
                          titleText: "This Pay Period",
                          hours: 12,
                          minutes: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 55,
                width:
                    constraints.maxWidth - _parentContainerPadding.horizontal,
                child: const PrimaryButton(
                  btnText: "Clock In",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
