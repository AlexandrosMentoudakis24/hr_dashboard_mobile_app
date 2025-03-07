import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/models/empty_content/empty_content_item.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/empty_screen_content/empty_screen_content_container.dart';

Widget _emptyStateWidget = EmptyScreenContentContainer(
  emptyContentItem: EmptyContentItem(
    containerTitle: "Expenses",
    containerSubTitle: "Current Expenses in Review",
    emptyIconWidget: Expanded(
      child: Image.asset(
        "assets/images/empty_expenses_image.png",
      ),
    ),
    messageTitle: "No Submitted Expenses",
    message:
        "It looks like you don't have any Expenses submitted at the moment. Don't worry, this space will be updated as new Expenses are submitted!",
  ),
);

class SubmittedExpensesContainer extends StatelessWidget {
  const SubmittedExpensesContainer({
    required this.hasItems,
    super.key,
  });

  final bool hasItems;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: hasItems
              ? const Text(
                  "Expenses",
                )
              : _emptyStateWidget,
        );
      },
    );
  }
}
