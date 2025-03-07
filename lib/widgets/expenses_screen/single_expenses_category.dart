import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/models/expenses_category/expense_category.dart';

class SingleExpensesCategory extends StatelessWidget {
  const SingleExpensesCategory({
    required this.category,
    super.key,
  });

  final ExpenseCategory category;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 5,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: category.color,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                category.displayedText,
                textAlign: TextAlign.left,
                textScaler: const TextScaler.linear(1.1),
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Text(
            "\$${category.totalSum}",
            textAlign: TextAlign.left,
            textScaler: const TextScaler.linear(1.1),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
