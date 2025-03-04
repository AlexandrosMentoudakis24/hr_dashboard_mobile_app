import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/models/empty_content/empty_content_item.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/empty_screen_content/empty_screen_content_container.dart';

const _parentContainerPadding = EdgeInsets.symmetric(
  horizontal: 20,
  vertical: 20,
);

final Widget _emptyWorkingTimesContainerContent = EmptyScreenContentContainer(
  emptyContentItem: EmptyContentItem(
    containerTitle: "Working Period",
    containerSubTitle: "Your Working time in this paid period",
    emptyIconWidget: Image.asset(
      "assets/images/empty_working_times_image.png",
    ),
    messageTitle: "No Working Time Available",
    message:
        "It looks like you don't have any Working Time in this period. Don't worry, this space will be updated as new Working Time is submitted!",
  ),
);

class WorkTimeContainer extends StatelessWidget {
  const WorkTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;

        return Container(
          height: maxHeight,
          width: maxWidth,
          padding: _parentContainerPadding,
          child: _emptyWorkingTimesContainerContent,
        );
      },
    );
  }
}
