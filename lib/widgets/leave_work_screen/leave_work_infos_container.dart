import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/widgets/leave_work_screen/single_leave_work_infos_item.dart';

class LeaveWorkInfosContainer extends StatelessWidget {
  const LeaveWorkInfosContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SingleLeaveWorkInfosItem(
            text: "Available",
            bgColor: Colors.green,
            totalSum: 20,
          ),
          SingleLeaveWorkInfosItem(
            text: "Leave Used",
            bgColor: Theme.of(context).primaryColor,
            totalSum: 2,
          ),
        ],
      ),
    );
  }
}
