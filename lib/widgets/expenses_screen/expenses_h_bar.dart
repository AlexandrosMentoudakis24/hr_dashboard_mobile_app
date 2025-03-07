import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/models/expenses_category/expense_category.dart';
import 'package:hr_dashboard_mobile_app/widgets/expenses_screen/single_expenses_h_bar_item.dart';

class ExpensesHBar extends StatefulWidget {
  const ExpensesHBar({super.key});

  @override
  State<ExpensesHBar> createState() => _ExpensesHBarState();
}

class _ExpensesHBarState extends State<ExpensesHBar> {
  var _currentActiveItem = ExpenseStateType.values[0];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            spacing: 10,
            children: [
              ...ExpenseStateType.values.map(
                (value) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentActiveItem = value;
                      });
                    },
                    child: SingleExpensesHBarItem(
                      enumValue: value,
                      isActive: _currentActiveItem == value,
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
