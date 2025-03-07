import 'dart:math';

import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/overflowed_container_with_card/overflowed_container_with_card.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/todays_tasks_container/todays_tasks_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/tasks_screen/tasks_type_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/tasks_screen/tasks_card.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/primary_button.dart';
import 'package:hr_dashboard_mobile_app/models/tasks/task.dart';
import 'package:hr_dashboard_mobile_app/models/users/user.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  late List<Task> _tasks;

  @override
  void initState() {
    _tasks = [
      Task(
        id: 1,
        title: "First task",
        taskState: TaskStateType.inProgress,
        taskPriority: TaskPriorityType.medium,
        assignees: [
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
        ],
        dueDate: DateTime.now(),
      ),
      Task(
        id: 2,
        title: "First task",
        taskState: TaskStateType.done,
        taskPriority: TaskPriorityType.high,
        assignees: [
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
        ],
        dueDate: DateTime.now(),
      ),
      Task(
        id: 3,
        title: "First task",
        taskState: TaskStateType.planning,
        taskPriority: TaskPriorityType.high,
        assignees: [
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
        ],
        dueDate: DateTime.now(),
      ),
      Task(
        id: 4,
        title: "First task",
        taskState: TaskStateType.planning,
        taskPriority: TaskPriorityType.high,
        assignees: [
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
        ],
        dueDate: DateTime.now(),
      ),
      Task(
        id: 5,
        title: "First task",
        taskState: TaskStateType.planning,
        taskPriority: TaskPriorityType.high,
        assignees: [
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
          User(
            id: 1,
            firstName: "Alexandros",
            lastName: "Mentoudakis",
          ),
        ],
        dueDate: DateTime.now(),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;

        final double upperContainerHeight = min(350.0, maxHeight * 0.5);
        final double filledContainerHeight = upperContainerHeight * 0.7;
        final double followingContainerHeight =
            maxHeight - upperContainerHeight;

        return SizedBox(
          height: maxHeight,
          width: maxWidth,
          child: Column(
            children: [
              OverflowedContainerWithCard(
                upperContainerHeight: upperContainerHeight,
                filledContainerHeight: filledContainerHeight,
                maxWidth: maxWidth,
                titleText: "Challenges",
                subTitleText: "Let's tackle your To-Do List",
                titleImage: Container(
                  alignment: Alignment.topCenter,
                  height: 73,
                  width: 73,
                  margin: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: Image.asset(
                    "assets/images/tasks_with_stars_image.png",
                  ),
                ),
                cardWidget: TasksCard(
                  tasks: _tasks,
                ),
              ),
              SizedBox(
                height: followingContainerHeight,
                width: maxWidth,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20,
                    children: [
                      Container(
                        height: 60,
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: const PrimaryButton(
                          btnText: "Create Task",
                        ),
                      ),
                      SizedBox(
                        height: 45,
                        width: maxWidth,
                        child: const TasksTypeContainer(),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TodaysTasksContainer(
                          tasks: _tasks,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
