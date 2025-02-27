import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/widgets/on_boarding_screen/single_index_item.dart';

class IndexingContainer extends StatelessWidget {
  const IndexingContainer({
    required this.totalSteps,
    required this.currentStep,
    super.key,
  });

  final int totalSteps;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var index = 0; index < totalSteps; index++)
                SingleIndexItem(
                  isActive: currentStep == index,
                ),
            ],
          ),
        );
      },
    );
  }
}
