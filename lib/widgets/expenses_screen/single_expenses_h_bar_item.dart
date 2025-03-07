import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/utils/string_formatting_utils/string_formatting_utils.dart';
import 'package:hr_dashboard_mobile_app/models/expenses_category/expense_category.dart';

class SingleExpensesHBarItem extends StatelessWidget {
  const SingleExpensesHBarItem({
    required this.enumValue,
    required this.isActive,
    super.key,
  });

  final ExpenseStateType enumValue;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final formattedText = StringFormattingUtils.formatEnumValue(
      enumValue: enumValue,
    );
    final textColor = isActive ? Colors.white : Colors.black;
    final bgColor =
        isActive ? Theme.of(context).primaryColor : Colors.transparent;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: FittedBox(
        child: Text(
          formattedText,
          textScaler: const TextScaler.linear(1.1),
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
