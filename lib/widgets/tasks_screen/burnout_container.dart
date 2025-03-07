import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/models/tasks/task.dart';

enum BurnoutState {
  bad,
  poor,
  good;
}

class BurnoutContainer extends StatelessWidget {
  const BurnoutContainer({
    required this.totalTodoTasks,
    required this.totalInProgressTasks,
    required this.totalCompletedTasks,
    super.key,
  });

  final int totalTodoTasks;
  final int totalInProgressTasks;
  final int totalCompletedTasks;

  @override
  Widget build(BuildContext context) {
    var bgColor = Colors.green;
    var imagePath = "assets/images/burnout_good_with_line_image.png";
    var burnoutState = BurnoutState.good;

    if ((totalTodoTasks >= 2 && totalCompletedTasks >= 2) ||
        (totalTodoTasks >= 2 && totalCompletedTasks >= 2) ||
        (totalTodoTasks >= 3 && totalCompletedTasks >= 1) ||
        (totalTodoTasks >= 3 && totalCompletedTasks >= 1)) {
      bgColor = Colors.orange;
      imagePath = "assets/images/burnout_poor_with_line_image.png";
      burnoutState = BurnoutState.poor;
    }
    if (totalTodoTasks >= 4 ||
        (totalInProgressTasks >= 4 && totalCompletedTasks >= 1) ||
        (totalTodoTasks >= 3 &&
            totalInProgressTasks >= 1 &&
            totalCompletedTasks >= 1) ||
        (totalInProgressTasks >= 1 &&
            totalTodoTasks >= 3 &&
            totalCompletedTasks >= 1) ||
        (totalInProgressTasks >= 3 &&
            totalTodoTasks >= 2 &&
            totalCompletedTasks >= 1) ||
        (totalTodoTasks >= 3 && totalCompletedTasks >= 2)) {
      bgColor = Colors.red;
      imagePath = "assets/images/burnout_bad_with_line_image.png";
      burnoutState = BurnoutState.bad;
    }

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            spacing: 8,
            children: [
              const Text(
                "Burnout Stats",
                textScaler: TextScaler.linear(1.1),
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Text(
                  burnoutState.name.toUpperCase(),
                  textScaler: const TextScaler.linear(1.1),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Flexible(
            child: Image.asset(
              imagePath,
            ),
          ),
        ],
      ),
    );
  }
}
