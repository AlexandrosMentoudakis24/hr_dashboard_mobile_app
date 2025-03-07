import 'package:hr_dashboard_mobile_app/models/users/user.dart';

class Meeting {
  Meeting({
    required this.id,
    required this.title,
    required this.startingDateTime,
    required this.endingDateTime,
    required this.currentActiveUsers,
  });

  final int id;
  final String title;
  final DateTime startingDateTime;
  final DateTime endingDateTime;
  final List<User> currentActiveUsers;
}
