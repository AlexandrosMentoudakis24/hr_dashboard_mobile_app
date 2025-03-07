import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/models/tasks/task.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/overflowed_container_with_card/card_displayed_texts.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/bordered_card_container/bordered_card_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/tasks_screen/tasks_categories_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/tasks_screen/burnout_container.dart';

const _parentContainerPadding = EdgeInsets.symmetric(
  horizontal: 20,
  vertical: 10,
);
const _parentContainerBorderWidth = 2.0;

class TasksCard extends StatelessWidget {
  const TasksCard({
    required this.tasks,
    super.key,
  });

  final List<Task> tasks;

  (int, int, int) _splitTasksByState() {
    var totalCompletedTasksSum = 0;
    var totalInProgressTasksSum = 0;
    var totalToDoTasksSum = 0;

    for (final task in tasks) {
      final taskState = task.taskState;

      switch (taskState) {
        case TaskStateType.done:
          totalCompletedTasksSum += 1;
          break;
        case TaskStateType.inProgress:
          totalInProgressTasksSum += 1;
          totalToDoTasksSum += 1;
          break;
        default:
          totalToDoTasksSum += 1;
          break;
      }
    }

    return (totalToDoTasksSum, totalInProgressTasksSum, totalCompletedTasksSum);
  }

  @override
  Widget build(BuildContext context) {
    final (toDoTasksSum, inProgressTasksSum, completedTasksSum) =
        _splitTasksByState();

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
                      titleText: "Summary of Your Work",
                    ),
                    CardSubTitleText(
                      subTitleText: "Your current Task Progress",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 75,
                child: TasksCategoriesContainer(
                  totalTodoTasks: toDoTasksSum,
                  totalInProgressTasks: inProgressTasksSum,
                  totalCompletedTasks: completedTasksSum,
                ),
              ),
              Flexible(
                flex: 1,
                child: BurnoutContainer(
                  totalTodoTasks: toDoTasksSum,
                  totalInProgressTasks: inProgressTasksSum,
                  totalCompletedTasks: completedTasksSum,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
