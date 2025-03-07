import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/models/users/user.dart';

const _singleCardSize = 35.0;

class ActiveUsersContainer extends StatelessWidget {
  const ActiveUsersContainer({
    required this.users,
    super.key,
  });

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    final maxUsersCount = users.length;
    final maxDisplayedUsers = maxUsersCount > 3 ? 3 : maxUsersCount;

    return LayoutBuilder(
      builder: (context, constraints) => Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        alignment: Alignment.centerLeft,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            if (maxUsersCount > 3)
              Positioned(
                left: 4 * _singleCardSize * 0.6,
                child: Text(
                  "+${maxUsersCount - maxDisplayedUsers}",
                  textScaler: const TextScaler.linear(1.1),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            for (var i = 0; i < maxDisplayedUsers; i++)
              Positioned(
                left: i * (_singleCardSize * 0.6),
                child: SizedBox(
                  height: _singleCardSize,
                  width: _singleCardSize,
                  child: CircleAvatar(
                    child: Image.asset(
                      fit: BoxFit.fill,
                      "assets/images/profile_image.png",
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
