import 'package:hr_dashboard_mobile_app/models/tasks/sub_task.dart';
import 'package:hr_dashboard_mobile_app/models/users/user.dart';

enum TaskStateType {
  planning,
  paused,
  inProgress,
  done;
}

enum TaskPriorityType {
  low,
  medium,
  high;
}

class Task {
  Task({
    required this.id,
    required this.title,
    required this.assignees,
    TaskStateType? taskState,
    TaskPriorityType? taskPriority,
    List<SubTask>? subTasks,
    required this.dueDate,
  })  : taskState = taskState ?? TaskStateType.planning,
        taskPriority = taskPriority ?? TaskPriorityType.low,
        subTasks = subTasks ?? [];

  final int id;
  String title;
  final List<User> assignees;
  TaskStateType taskState;
  TaskPriorityType taskPriority;
  List<SubTask> subTasks;
  final DateTime dueDate;

  void setTitle(String newTaskTitle) {
    title = newTaskTitle;
  }

  void addNewAssignee(User newAssignee) {
    assignees.insert(0, newAssignee);
  }

  void removeAssignee(User assignee) {
    var hasSubTaskAssigned = false;

    for (final subTask in subTasks) {
      if (subTask.assignees.contains(assignee)) {
        hasSubTaskAssigned = true;

        break;
      }
    }

    if (hasSubTaskAssigned) {
      throw Error();
    }

    assignees.removeWhere((a) => a.id == assignee.id);
  }

  void addSubTask(SubTask newSubTask) {
    subTasks.insert(0, newSubTask);
  }

  void removeSubTask(SubTask subTask) {
    subTasks.removeWhere((s) => s.id == subTask.id);
  }
}
