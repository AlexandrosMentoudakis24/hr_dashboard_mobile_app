import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/expenses_screen/single_expenses_category.dart';
import 'package:hr_dashboard_mobile_app/models/expenses_category/expense_category.dart';

class ExpensesCategoriesContainer extends StatelessWidget {
  const ExpensesCategoriesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SingleExpensesCategory(
            category: ExpenseCategory(
              categoryType: ExpenseCategoryType.total,
              color: Theme.of(context).primaryColor,
              displayedText: "Total",
              totalSum: 0,
            ),
          ),
          SingleExpensesCategory(
            category: ExpenseCategory(
              categoryType: ExpenseCategoryType.review,
              color: Colors.orange,
              displayedText: "Review",
              totalSum: 0,
            ),
          ),
          SingleExpensesCategory(
            category: ExpenseCategory(
              categoryType: ExpenseCategoryType.approved,
              color: Colors.green,
              displayedText: "Approved",
              totalSum: 0,
            ),
          ),
        ],
      ),
    );
  }
}
