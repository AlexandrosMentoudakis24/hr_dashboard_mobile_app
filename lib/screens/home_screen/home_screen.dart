import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/models/tasks/task.dart';
import 'package:hr_dashboard_mobile_app/models/users/user.dart';

import 'package:hr_dashboard_mobile_app/widgets/home_screen/todays_meetings_container/todays_meetings_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/todays_tasks_container/todays_tasks_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/user_infos_container/user_infos_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/home_screen/filled_summary_card/filled_summary_card.dart';

const EdgeInsets _innerContainerPadding = EdgeInsets.symmetric(
  horizontal: 10,
);
const _userInfosContainerHeight = 80.0;
const _filledSummaryCardHeight = 130.0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;

        return Container(
          height: maxHeight,
          width: maxWidth,
          padding: _innerContainerPadding,
          child: SingleChildScrollView(
            child: Column(
              spacing: 15,
              children: [
                SizedBox(
                  height: _userInfosContainerHeight,
                  width: maxWidth,
                  child: const UserInfosContainer(),
                ),
                SizedBox(
                  height: _filledSummaryCardHeight,
                  width: maxWidth,
                  child: const FilledSummaryCard(),
                ),
                const TodaysMeetingsContainer(),
                TodaysTasksContainer(
                  tasks: _tasks,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
