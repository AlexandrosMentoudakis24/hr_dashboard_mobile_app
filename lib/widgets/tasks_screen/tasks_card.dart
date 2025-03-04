import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/bordered_card_container/bordered_card_container.dart';

const _cardTitleText = Text(
  "Summary of Your Work",
  textAlign: TextAlign.left,
  textScaler: TextScaler.linear(1.1),
  style: TextStyle(
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  ),
);
const _cardSubTitleText = Text(
  "Your currentTask Progress",
  textAlign: TextAlign.left,
  textScaler: TextScaler.linear(1.1),
  style: TextStyle(
    fontSize: 12,
    color: Colors.black,
  ),
);

class TasksCard extends StatelessWidget {
  const TasksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => BorderedCardContainer(
        maxHeight: constraints.maxHeight,
        maxWidth: constraints.maxWidth,
        borderWidth: 2,
        childWidget: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: constraints.maxWidth,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _cardTitleText,
                    _cardSubTitleText,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
