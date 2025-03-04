import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/primary_button.dart';
import 'package:hr_dashboard_mobile_app/widgets/clock_in_screen/clock_in_container/single_clock_in_metrics.dart'ck_in_metrics.dart';

const _parentContainerPadding = EdgeInsets.symmetric(
  horizontal: 20,
  vertical: 10,
);

const _parentContainerBorderWidth = 2.0;

const _cardTitleText = Text(
  "Total Working Hour",
  textAlign: TextAlign.left,
  textScaler: TextScaler.linear(1.1),
  style: TextStyle(
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  ),
);
const _cardSubTitleText = Text(
  "Paid period 01/07/2024 - 30/07/2024",
  textAlign: TextAlign.left,
  textScaler: TextScaler.linear(1.1),
  style: TextStyle(
    fontSize: 12,
    color: Colors.black,
  ),
);

class ClockInCard extends StatelessWidget {
  const ClockInCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: constraints.maxWidth,
        padding: _parentContainerPadding,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            width: _parentContainerBorderWidth,
            color: Colors.black,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: constraints.maxWidth - _parentContainerPadding.horizontal,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _cardTitleText,
                  _cardSubTitleText,
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
              width: constraints.maxWidth - _parentContainerPadding.horizontal,
              child: const PrimaryButton(
                btnText: "Clock In",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
