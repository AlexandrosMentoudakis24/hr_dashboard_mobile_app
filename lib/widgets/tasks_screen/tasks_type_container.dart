import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/widgets/tasks_screen/single_task_type_button.dart';

class TasksTypeContainer extends StatefulWidget {
  const TasksTypeContainer({super.key});

  @override
  State<TasksTypeContainer> createState() => _TasksTypeContainerState();
}

class _TasksTypeContainerState extends State<TasksTypeContainer> {
  var _activeType = "All";

  var _types = [
    "All",
    "In Progress",
    "Finished",
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;

        return Container(
          height: maxHeight,
          width: maxWidth,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _types.map(
              (type) {
                final singleItemWidth =
                    (maxWidth - (2 * 15)) * (1 / _types.length);

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _activeType = type;
                    });
                  },
                  child: SizedBox(
                    height: maxHeight,
                    width: singleItemWidth,
                    child: SingleTaskTypeButton(
                      text: type,
                      isActive: type == _activeType,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }
}
