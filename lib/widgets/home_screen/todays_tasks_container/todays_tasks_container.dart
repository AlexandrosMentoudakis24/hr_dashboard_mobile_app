import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/home_screen/todays_tasks_container/empty_tasks_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/tasks/single_task_container.dart';
import 'package:hr_dashboard_mobile_app/models/tasks/task.dart';

class TodaysTasksContainer extends StatefulWidget {
  const TodaysTasksContainer({
    required this.tasks,
    super.key,
  });

  final List<Task> tasks;

  @override
  State<TodaysTasksContainer> createState() => _TodaysTasksContainerState();
}

class _TodaysTasksContainerState extends State<TodaysTasksContainer> {
  @override
  Widget build(BuildContext context) {
    final isEmptyList = widget.tasks.isEmpty;

    final Widget defaultScreenContent = LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
            width: constraints.maxWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Today's Tasks",
                      textAlign: TextAlign.left,
                      textScaler: TextScaler.linear(1.1),
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "${widget.tasks.length}",
                      textAlign: TextAlign.left,
                      textScaler: const TextScaler.linear(1.1),
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(0),
                  itemCount: widget.tasks.length,
                  itemBuilder: (context, index) {
                    final task = widget.tasks[index];

                    return Container(
                      height: 180,
                      margin: const EdgeInsets.only(bottom: 10),
                      width: constraints.maxWidth,
                      child: SingleTaskContainer(
                        task: task,
                      ),
                    );
                  },
                ),
              ],
            ));
      },
    );

    return isEmptyList ? emptyTasksContainerContent : defaultScreenContent;
  }
}
