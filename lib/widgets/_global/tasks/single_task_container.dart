import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/models/tasks/task.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/active_users_container/active_users_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/tasks/single_task_more_infos_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/tasks/single_task_progress_bar_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/tasks/single_task_states_container.dart';

class SingleTaskContainer extends StatelessWidget {
  const SingleTaskContainer({
    required this.task,
    super.key,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.task_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      task.title,
                      textAlign: TextAlign.left,
                      textScaler: const TextScaler.linear(1.1),
                      style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_forever_sharp,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: SingleTaskStatesContainer(
                        taskState: task.taskState,
                        taskPriority: task.taskPriority,
                      ),
                    ),
                    SizedBox(
                      width: constraints.maxWidth,
                      child: SingleTaskProgressBarContainer(
                        subTasks: task.subTasks,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ActiveUsersContainer(
                      users: task.assignees,
                    ),
                  ),
                  Expanded(
                    child: SingleTaskMoreInfosContainer(
                      dueDate: task.dueDate,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
