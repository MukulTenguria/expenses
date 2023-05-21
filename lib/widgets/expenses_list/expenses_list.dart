import 'package:expenses_tracker/models/expense.dart';
import 'package:expenses_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;
  @override
  Widget build(context) {
    return ListView.builder(
      itemBuilder: (ctx, index) => Dismissible(
        //ValueKey is use for creating uniquely identyfying the widget
        key: ValueKey(expenses[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.09),
          //  it will not be applied bs'e we alreadyy set margin of card in main.dart for this container  so we have to take margin from cardTheme
          // margin: EdgeInsets.symmetric( horizontal: 16,),
          margin: Theme.of(context).cardTheme.margin,
        ), //colorScheme will take the colorScheme which contain one seed color
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(expenses[index]),
      ),
      itemCount: expenses.length,
    );
  }
}
