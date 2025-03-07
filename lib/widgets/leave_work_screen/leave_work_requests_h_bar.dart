import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/widgets/leave_work_screen/single_leave_work_requests_bar_item.dart';

enum LeaveWorkRequestsStateType {
  review,
  approved,
  rejected;
}

class LeaveWorkRequestsHBar extends StatefulWidget {
  const LeaveWorkRequestsHBar({super.key});

  @override
  State<LeaveWorkRequestsHBar> createState() => _LeaveWorkRequestsHBarState();
}

class _LeaveWorkRequestsHBarState extends State<LeaveWorkRequestsHBar> {
  var _currentActiveItem = LeaveWorkRequestsStateType.values[0];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            spacing: 10,
            children: [
              ...LeaveWorkRequestsStateType.values.map(
                (value) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentActiveItem = value;
                      });
                    },
                    child: SingleLeaveWorkRequestsBarItem(
                      enumValue: value,
                      isActive: _currentActiveItem == value,
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
