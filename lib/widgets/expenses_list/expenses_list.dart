import 'package:expenses_tracker/models/expense.dart';
import 'package:expenses_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;
  @override
  Widget build(context) {
    return ListView.builder(
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
      itemCount: expenses.length,
    );
  }
}
