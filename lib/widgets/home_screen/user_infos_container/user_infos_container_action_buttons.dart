import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/home_screen/user_infos_container/single_user_infos_container_button.dart';

class UserInfosContainerActionButtons extends StatelessWidget {
  const UserInfosContainerActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SingleUserInfosContainerButton(
                onIconPressedHandler: () {},
                icon: Icons.message_rounded,
              ),
              SingleUserInfosContainerButton(
                onIconPressedHandler: () {},
                icon: Icons.notifications_rounded,
              ),
            ],
          ),
        );
      },
    );
  }
}
