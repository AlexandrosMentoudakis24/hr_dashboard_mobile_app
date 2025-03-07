import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/tasks_screen/single_task_category.dart';

class TasksCategoriesContainer extends StatefulWidget {
  const TasksCategoriesContainer({
    required this.totalTodoTasks,
    required this.totalInProgressTasks,
    required this.totalCompletedTasks,
    super.key,
  });

  final int totalTodoTasks;
  final int totalInProgressTasks;
  final int totalCompletedTasks;

  @override
  State<TasksCategoriesContainer> createState() =>
      _TasksCategoriesContainerState();
}

class _TasksCategoriesContainerState extends State<TasksCategoriesContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SingleTaskCategory(
            icon: Icons.developer_mode_outlined,
            iconBgColor: Theme.of(context).primaryColor,
            category: TaskCategory.toDo,
            totalSum: widget.totalTodoTasks,
          ),
          SingleTaskCategory(
            icon: Icons.timer_outlined,
            iconBgColor: Colors.orange,
            category: TaskCategory.inProgress,
            totalSum: widget.totalInProgressTasks,
          ),
          SingleTaskCategory(
            icon: Icons.done,
            iconBgColor: Colors.green,
            category: TaskCategory.done,
            totalSum: widget.totalCompletedTasks,
          ),
        ],
      ),
    );
  }
}
