import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/bordered_card_container/bordered_card_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/overflowed_container_with_card/card_displayed_texts.dart';
import 'package:hr_dashboard_mobile_app/widgets/leave_work_screen/leave_work_infos_container.dart';

const _parentContainerPadding = EdgeInsets.symmetric(
  horizontal: 20,
  vertical: 10,
);

const _parentContainerBorderWidth = 2.0;

class LeaveWorkCard extends StatelessWidget {
  const LeaveWorkCard({super.key});

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
                width: constraints.maxWidth,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardTitleText(
                      titleText: "Total Leave",
                    ),
                    CardSubTitleText(
                      subTitleText: "Period 01/01/2025 - 30/12/2025",
                    ),
                  ],
                ),
              ),
              const Flexible(
                flex: 1,
                child: LeaveWorkInfosContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
