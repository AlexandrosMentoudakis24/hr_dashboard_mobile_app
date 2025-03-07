import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/empty_screen_content/empty_screen_content_container.dart';
import 'package:hr_dashboard_mobile_app/models/empty_content/empty_content_item.dart';

Widget emptyMeetingsContainerContent = EmptyScreenContentContainer(
  emptyContentItem: EmptyContentItem(
    containerTitle: "Today's Mettings",
    containerSubTitle: "Your schedule for today",
    emptyIconWidget: Expanded(
      child: Center(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Icon(
              Icons.person,
              color: Theme.of(context).primaryColor.withAlpha(40),
              size: 35,
            );
          },
        ),
      ),
    ),
    messageTitle: "No Meeting Available",
    message:
        "It looks like you don't have any meetings scheduled at the moment. This space will be updated as new meetings are added!",
  ),
);
