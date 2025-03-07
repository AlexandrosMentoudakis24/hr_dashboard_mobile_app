import 'package:flutter/material.dart';

enum ExpenseCategoryType {
  total,
  review,
  approved;
}

enum ExpenseStateType {
  review,
  approved,
  rejected;
}

class ExpenseCategory {
  ExpenseCategory({
    required this.categoryType,
    required this.color,
    required this.displayedText,
    required this.totalSum,
  });

  final Color color;
  final ExpenseCategoryType categoryType;
  final String displayedText;
  final int totalSum;
}
