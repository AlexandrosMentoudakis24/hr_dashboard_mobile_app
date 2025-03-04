import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/home_screen/user_infos_container/user_infos_container_action_buttons.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/user_infos_container/user_infos_container_profile_infos.dart';

class UserInfosContainer extends StatelessWidget {
  const UserInfosContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;

        final userInformationContainerWidth = maxWidth * 0.7;

        return SizedBox(
          height: maxHeight,
          width: maxWidth,
          child: Row(
            children: [
              SizedBox(
                height: maxHeight,
                width: userInformationContainerWidth,
                child: const UserInfosContainerProfileInfos(),
              ),
              SizedBox(
                height: maxHeight,
                width: maxWidth - userInformationContainerWidth,
                child: const UserInfosContainerActionButtons(),
              ),
            ],
          ),
        );
      },
    );
  }
}
