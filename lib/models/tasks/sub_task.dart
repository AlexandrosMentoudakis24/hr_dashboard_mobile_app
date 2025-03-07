import 'package:hr_dashboard_mobile_app/models/users/user.dart';

enum SubTaskStateType {
  paused,
  inProgress,
  done;
}

class SubTask {
  SubTask({
    required this.id,
    required this.title,
    required this.assignees,
    SubTaskStateType? subTaskState,
  }) : subTaskState = subTaskState ?? SubTaskStateType.inProgress;

  final int id;
  String title;
  final List<User> assignees;
  SubTaskStateType subTaskState;

  void setTitle(String newSubTaskTitle) {
    title = newSubTaskTitle;
  }

  void addNewAssignee(User newAssignee) {
    assignees.insert(0, newAssignee);
  }

  void removeAssignee(User assignee) {
    assignees.removeWhere((a) => a.id == assignee.id);
  }

  void setSubTaskState(SubTaskStateType newSubTaskState) {
    subTaskState = newSubTaskState;
  }
}

