import 'package:flutter/material.dart';

class EmptyTasksContainerIcon extends StatelessWidget {
  const EmptyTasksContainerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/images/empty_tasks_image.png",
      ),
    );
  }
}
